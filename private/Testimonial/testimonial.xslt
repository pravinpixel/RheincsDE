<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"  exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" omit-xml-declaration="yes"/>
  <xsl:template match="Testimonials">
    <xsl:if test="count(Testimonial) &gt; 0">
      <a class="buttons prev" href="#">&#60;</a>
      <div class="viewport">
        <ul class="overview">
      <xsl:apply-templates select ="Testimonial" />
        </ul>
      </div>
      <a class="buttons next" href="#">&#62;</a>
     
     
    </xsl:if>
  </xsl:template>
  <xsl:template match ="Testimonial">
    <li>
      <xsl:value-of select="Content" disable-output-escaping="yes"/>
    <br />
      <img class="testimonial-img img-circle" src="/Assets/images/Testimonial/{ImageName}" alt="Testimonial by {Name}" style="margin-right: 10px; float: left; width: 66px; height: 67px;" />
                                                        <p class="testimonial-name">
                                                          <xsl:value-of select="Name" disable-output-escaping="yes"/><br/>
          <span class="smaller">
            <xsl:value-of select="Designation" disable-output-escaping="yes"/> at
             <xsl:value-of select="CompanyName" disable-output-escaping="yes"/><br/>
               <xsl:value-of select="Address" disable-output-escaping="yes"/> </span>
        </p>
    </li>
     

  </xsl:template>
</xsl:stylesheet>