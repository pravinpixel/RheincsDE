/*
 HTML5 Slideshow
 Version: 1.5.0
 (c) 2013 DMXzone.com
 @build 04-07-2013 13:18:20
*/
(function (d) {
    function k(a, b) { var c = this; this.version = o; this.$target = d(a); this.opts = d.extend(!0, {}, k.options, b || {}); this.preloadId = 0; this.images = []; this.$target.append('<div class="' + m + '"></div>'); this.hasSpryRegion() ? Spry.Data.Region.addObserver(this._spryRegion, { onPostUpdate: function () { c.preloadImages.apply(c) } }) : this.preloadImages() } function l(a, b) { this.$target = d(a); this.opts = d.extend(!0, {}, k.options, b || {}); this.init() } var o = "1.2.4", m = "dmxLoader", p = "iPod" === navigator.platform, q = "iPad" === navigator.platform,
    r = "iPhone" === navigator.platform || p || q; d.fn.dmxHTML5Slideshow = function (a) { var b = Array.prototype.slice.call(arguments, 1); this.each(function () { var c; d(this).data("slideshow") ? c = d(this).data("slideshow") : (c = new k(this, a), d(this).data("slideshow", c)); "string" === typeof a && c[a] && c[a].apply(c, b) }); return this }; k.options = {
        autoPlay: !0, index: 0, shuffle: !1, slide: { duration: 8E3, placement: "center" }, controls: { enabled: !0, autoHide: !0, position: "center", playPause: !0, nextPrev: !0, firstLast: !0 }, description: {
            position: "top",
            effect: "slide", duration: 400, easing: "swing", show: "slide"
        }, transition: { effect: "fade", duration: 1E3, easing: "swing" }, kenburns: { enabled: !0, start: { zoom: "1~1.5", pan: "random" }, end: { zoom: "1~1.5", pan: "random" } }
    }; k.prototype = {
        init: function () {
            var a = this; this.$slides = this.$target.find(".dmxSlide"); this.width = this.$target.width(); this.height = this.$target.height(); d(window).resize(function () {
                a.width = a.$target.width(); a.height = a.$target.height(); a.$slides.find("img").each(function () { a.positionImage.call(a, this) });
                if (a.$controls && "center" === a.opts.controls.position) { var b = a.$controls.outerWidth(), c = a.$controls.outerHeight(); a.$controls.css({ left: (a.width - b) / 2, top: (a.height - c) / 2 }) }
            }); if (this.opts.shuffle) for (var b, c, e = this.$slides.length; e; b = parseInt(Math.random() * e), c = this.$slides[--e], this.$slides[e] = this.$slides[b], this.$slides[b] = c); "random" === this.opts.index && (this.opts.index = Math.floor(Math.random() * this.$slides.length)); this.curr = this.opts.index; this.lastIndex = this.$slides.length - 1; this.paused = !this.opts.autoPlay;
            this.timeoutId = 0; this.$slides.each(function () { var a = d("a[onfocus]", this), b = d("a[onblur]", this); if (a.length > 0) { d(this).bind("show", a[0].onfocus); a.removeAttr("onfocus") } if (b.length > 0) { d(this).bind("hide", b[0].onblur); b.removeAttr("onblur") } }); this.opts.controls.enabled && this.setupControls(); this.setupDescriptions(); this.opts.kenburns.enabled ? this.$slides.dmxKenburns(this.opts.kenburns) : this.$slides.find("img").each(function () { a.positionImage.call(a, this) }); this.$slides.hide().css("visibility", "visible");
            this.$slides.eq(this.curr).trigger("show").animate({ opacity: "show" }, this.opts.transition.duration, this.opts.transition.easing); this.opts.kenburns.enabled && (this.paused ? this.$slides.eq(this.curr).dmxKenburns("show") : this.$slides.eq(this.curr).dmxKenburns("animate", this.opts.slide.duration + 2 * this.opts.transition.duration)); this.paused || (this.timeoutId = setTimeout(function () { a.next.call(a) }, this.opts.transition.duration + this.opts.slide.duration))
        }, delegate: function (a, b) { return function () { b.apply(a, arguments) } },
        preloadImages: function () { var a = this; 0 == this.images.length && this.$target.find("img").each(function () { var b = new Image; b.onload = function () { this.loaded = !0 }; b.onerror = function () { this.loaded = !0 }; b.src = this.src; a.images.push(b) }); for (var b = 0; b < this.images.length; ++b) if (this.images[b].complete && (this.images[b].loaded = !0), !this.images[b].loaded) { this.preloadId = window.setTimeout(this.delegate(this, this.preloadImages), 100); return } this.init(); this.$target.find("." + m).remove() }, hasSpryRegion: function () {
            if ("undefined" !=
            typeof Spry && Spry.Data && Spry.Data.regionsArray) { this.isEmptyObject(Spry.Data.regionsArray) && Spry.Data.initRegions(); for (var a in Spry.Data.regionsArray) if (0 < this.$target.find("#" + a).length) return this._spryRegion = a, !0 } return !1
        }, isEmptyObject: function (a) { for (var b in a) return !1; return !0 }, setupControls: function () {
            var a = this, b = this.opts.controls; this.$controls = d('<div class=" ' + b.position + '"></div>').appendTo(this.$target); b.firstLast && d('<div class="dmxControl first"></div>').click(function (b) {
                b.stopPropagation();
                a.first.call(a)
            }).appendTo(this.$controls); b.nextPrev && d('<div class=""></div>').click(function (b) { b.stopPropagation(); a.prev.call(a) }).appendTo(this.$controls); b.playPause && d('<div class="dmxControl ' + (this.opts.pause ? "play" : "pause") + '"></div>').click(function (b) { b.stopPropagation(); a.playPause.call(a) }).appendTo(this.$controls); b.nextPrev && d('<div class=""></div>').click(function (b) { b.stopPropagation(); a.next.call(a) }).appendTo(this.$controls); b.firstLast && d('<div class="dmxControl last"></div>').click(function (b) {
                b.stopPropagation();
                a.last.call(a)
            }).appendTo(this.$controls); switch (b.position) { case "top": this.$controls.css("top", 0); break; case "bottom": this.$controls.css("bottom", 0) } if ("center" === b.position) { var c = this.$controls.outerWidth(), e = this.$controls.outerHeight(); this.$controls.css({ left: (this.width - c) / 2, top: (this.height - e) / 2 }) } b.autoHide && (this.$controls.hide(), this.$target.hover(function () { a.$controls.fadeIn() }, function () { a.$controls.fadeOut() }))
        }, setupDescriptions: function () {
            var a = this.opts.description, b = function () {
                switch (a.effect) {
                    case "fade": d(this).find(".dmxDescription").animate({ opacity: "show" },
                    a.duration, a.easing); break; case "slide": var b = {}; b[a.position] = 0; d(this).find(".dmxDescription").animate(b, a.duration, a.easing); break; default: d(this).find(".dmxDescription").show()
                }
            }, c = function () { var b = d(this).find(".dmxDescription"); switch (a.effect) { case "fade": b.animate({ opacity: "hide" }, a.duration, a.easing); break; case "slide": var c = {}; c[a.position] = -b.outerHeight(); b.animate(c, a.duration, a.easing); break; default: b.hide() } }; this.$slides.each(function () {
                var e = d(".dmxDescription", this).addClass(a.position);
                switch (a.position) { case "top": e.css("top", 0); break; case "bottom": e.css("bottom", 0) } if ("always" !== a.show) { switch (a.effect) { case "fade": e.hide(); break; case "slide": e.css(a.position, -e.outerHeight()) } "hover" === a.show ? d(this).hover(b, c) : "slide" === a.show && (d(this).bind("show", b), d(this).bind("hide", c)) }
            })
        }, positionImage: function (a) {
            var a = d(a), b = 1, c = a.width(), e = a.height(), b = this.width / c, h = this.height / e; switch (this.opts.slide.placement) {
                case "stretch": c = this.width; e = this.height; break; case "fit": case "squeeze": b =
                b < h ? b : h; c *= b; e *= b; break; case "fill": case "trim": b = b > h ? b : h, c *= b, e *= b
            } a.css({ width: c, height: e, left: (this.width - c) / 2, top: (this.height - e) / 2 })
        }, playPause: function () { this.paused ? (this.play(), this.$target.find(".dmxControl.play").removeClass("play").addClass("pause")) : (this.pause(), this.$target.find(".dmxControl.pause").removeClass("pause").addClass("play")) }, play: function () { this.paused = !1; this.opts.kenburns.enabled && this.$slides.eq(this.curr).dmxKenburns("stop", !1); this.next() }, pause: function () {
            this.paused =
            !0; clearTimeout(this.timeoutId); this.opts.kenburns.enabled && this.$slides.eq(this.curr).dmxKenburns("stop", !0)
        }, first: function () { this.go(0) }, prev: function () { var a = this.curr - 1; 0 > a && (a = this.lastIndex); this.go(a) }, next: function () { var a = this.curr + 1; a > this.lastIndex && (a = 0); this.go(a) }, last: function () { this.go(this.lastIndex) }, go: function (a) {
            clearTimeout(this.timeoutId); var b = this, c = this.curr; this.curr = Math.min(Math.max(0, a), this.lastIndex); if (this.curr !== c) {
                var e, a = { left: 0 }, h, g, f = { left: 0 }, j, i = this.opts.transition.effect;
                "random" === i && (i = ["fade", "slide", "reveil", "push"][Math.floor(4 * Math.random())]); switch (i) {
                    case "fade": a = { opacity: "hide" }; f = { opacity: "show" }; break; case "slide": h = { display: "none" }; g = { zIndex: "12", left: this.width, display: "block" }; f = { left: 0 }; j = { zIndex: 11 }; break; case "reveil": e = { zIndex: 12 }; a = { left: this.width }; h = { zIndex: 11, left: 0, display: "none" }; g = { display: "block" }; break; case "push": a = { left: -this.width }; h = { left: 0, display: "none" }; g = { left: this.width, display: "block" }; f = { left: 0 }; break; default: e = { display: "none" },
                    g = { display: "block" }
                } this.$slides.eq(c).stop(!0, !0); this.$slides.eq(this.curr).stop(!0, !0); this.$slides.eq(c).trigger("hide"); e && this.$slides.eq(c).css(e); this.$slides.eq(c).animate(a, this.opts.transition.duration, this.opts.transition.easing, function () { h && b.$slides.eq(c).css(h) }); this.$slides.eq(this.curr).trigger("show"); g && this.$slides.eq(this.curr).css(g); this.$slides.eq(this.curr).animate(f, this.opts.transition.duration, this.opts.transition.easing, function () { j && b.$slides.eq(b.curr).css(j) }); !d.support.opacity &&
                "fade" == i && (this.$slides.eq(c).find("img").animate(a, this.opts.transition.duration, this.opts.transition.easing), this.$slides.eq(this.curr).find("img").animate(f, this.opts.transition.duration, this.opts.transition.easing)); this.paused ? this.opts.kenburns.enabled && this.$slides.eq(this.curr).dmxKenburns("show") : (this.opts.kenburns.enabled && this.$slides.eq(this.curr).dmxKenburns("animate", this.opts.slide.duration + 2 * this.opts.transition.duration), this.timeoutId = setTimeout(function () { b.next.call(b) }, this.opts.transition.duration +
                this.opts.slide.duration))
            }
        }
    }; d.fn.dmxKenburns = function (a) { var b = Array.prototype.slice.call(arguments, 1); this.each(function () { var c; d(this).data("kenburns") ? c = d(this).data("kenburns") : (c = new l(this, a), d(this).data("kenburns", c)); "string" === typeof a && c[a] && c[a].apply(c, b) }); return this }; l.options = { start: { zoom: "1~1.5", pan: "random" }, end: { zoom: "1~1.5", pan: "random" } }; l.positions = ["top-left", "top-right", "bottom-left", "bottom-right"]; l.prototype = {
        init: function () {
            this.width = this.$target.width(); this.height =
            this.$target.height(); this.halted = !1; r ? (this.useCanvas = !1, this.useTransition = !0) : (this.checkCanvas(), this.useTransition = !1); if (this.useCanvas) this.setupCanvas(); else {
                this.$image = this.$target.find("img"); this.image = this.$image[0]; this.image.loaded = !0; this.imgWidth = this.$image.width(); this.imgHeight = this.$image.height(); var a = this.width / this.imgWidth, b = this.height / this.imgHeight, a = a > b ? a : b; this.imgWidth = Math.round(this.imgWidth * a); this.imgHeight = Math.round(this.imgHeight * a); this.$image.width(this.imgWidth);
                this.$image.height(this.imgHeight)
            }
        }, checkCanvas: function () { this.useCanvas = !!document.createElement("canvas").getContext }, setupCanvas: function () {
            var a = this.$target.find("img"); this.image = a[0]; this.image.loaded = !0; this.imgWidth = a.width(); this.imgHeight = a.height(); var b = this.width / this.imgWidth, c = this.height / this.imgHeight, b = b > c ? b : c; this.imgWidth *= b; this.imgHeight *= b; b = document.createElement("canvas"); b.width = this.width; b.height = this.height; this.ctx = b.getContext("2d"); a.replaceWith(b); this.intervalId =
            0
        }, stop: function (a) { this.halted = a }, show: function () { var a = this.imgWidth, b = this.imgHeight, c = (this.width - a) / 2, d = (this.height - b) / 2; this.useCanvas && (this.ctx.clearRect(0, 0, this.width, this.height), this.ctx.drawImage(this.image, c, d, a, b)) }, animate: function (a, b) {
            if (this.image.loaded) {
                this.halted = !1; var c = d.extend({}, this.opts, b || {}), e = this.getZoom(c.start), h = this.getZoom(c.end), g = this.getPan(c.start), c = this.getPan(c.end), f = { width: e * this.imgWidth, height: e * this.imgHeight }, j = { width: h * this.imgWidth, height: h * this.imgHeight };
                f.left = -1 < g.indexOf("left") ? 0 : -1 < g.indexOf("right") ? this.width - f.width : (this.width - f.width) / 2; f.top = -1 < g.indexOf("top") ? 0 : -1 < g.indexOf("bottom") ? this.height - f.height : (this.height - f.height) / 2; j.left = -1 < c.indexOf("left") ? 0 : -1 < c.indexOf("right") ? this.width - j.width : (this.width - j.width) / 2; j.top = -1 < c.indexOf("top") ? 0 : -1 < c.indexOf("bottom") ? this.height - j.height : (this.height - j.height) / 2; if (this.useCanvas) {
                    var i = this, l = (new Date).getTime(); clearInterval(this.intervalId); this.intervalId = setInterval(function () {
                        var b =
                        (new Date).getTime() - l, c = b > a ? 1 : b / a; if (i.image.loaded) { var d = f.left + (j.left - f.left) * c, e = f.top + (j.top - f.top) * c, g = f.width + (j.width - f.width) * c, c = f.height + (j.height - f.height) * c; i.ctx.clearRect(0, 0, i.width, i.height); i.ctx.drawImage(i.image, d, e, g, c) } (b > a || i.halted) && clearInterval(i.intervalId)
                    }, 1E3 / 60)
                } else if (this.useTransition) {
                    var k = Math.round((this.width - this.imgWidth * e) / 2), n = Math.round((this.height - this.imgHeight * e) / 2), k = -1 < g.indexOf("left") ? 0 : -1 < g.indexOf("right") ? 2 * k : k, g = -1 < g.indexOf("top") ? 0 : -1 <
                    g.indexOf("bottom") ? 2 * n : n, n = Math.round((this.width - this.imgWidth * h) / 2), m = Math.round((this.height - this.imgHeight * h) / 2), o = -1 < c.indexOf("left") ? 0 : -1 < c.indexOf("right") ? 2 * n : n, p = -1 < c.indexOf("top") ? 0 : -1 < c.indexOf("bottom") ? 2 * m : m; this.$image.css({ width: this.imgWidth, height: this.imgHeight, "-webkit-transform-origin": "0 0", "-webkit-transition-property": "-webkit-transform", "-webkit-transition-duration": "0s", "-webkit-transition-timing-function": "linear" }); this.$image.css("-webkit-transform", "translate3d(" + k +
                    "px," + g + "px,0px) scale(" + e + ")"); i = this; setTimeout(function () { i.$image.css("-webkit-transition-duration", a + "ms"); i.$image.css("-webkit-transform", "translate3d(" + o + "px," + p + "px,0px) scale(" + h + ")") }, 0)
                } else this.$image.css(f).animate(j, a, "linear")
            }
        }, getZoom: function (a) { a = a.zoom; if ("string" === typeof a) if (-1 < a.indexOf("~")) var b = a.split("~"), a = parseFloat(b[0]), b = parseFloat(b[1]), a = a + Math.random() * (b - a); else a = parseFloat(a); return a }, getPan: function (a) {
            a = a.pan; "random" === a && (a = l.positions[Math.floor(Math.random() *
            l.positions.length)]); return a
        }
    }
})(jQuery);