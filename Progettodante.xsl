<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei ="http://www.tei-c.org/ns/1.0"
    >

<xsl:output method="html" version="5.0" indent="yes"/>
<!--Main-->
<xsl:template match="/">
    <html>
        <head id="home"><title><xsl:value-of select="//tei:titleStmt/tei:title" /></title></head><!--Titolo pagina-->
        <link rel="stylesheet" type="text/css" href="Progeettodante.css"/><!--da realizzare-->
        <script src="funzionidante.js"></script>
        <body>
            <div id="global_body">
                <header id="main_header">
                    <div id="home_title">Pace di Dante</div>
                    <img src="Dante_icon.png" class="logo_dante"/>
                </header>       
                    <div id="menu_central">
                         <button onclick="aprimanuscript()">Informazioni Manoscritto</button>
                                <div id="Manuscript_content" class="manuscript">
                                    <h1>Informazioni del Manoscritto</h1> 
                                    <xsl:apply-templates select="//tei:listBibl[@xml:id='Pacedant']/tei:msDesc" />
                                </div>
                        <div id="contentmenudoc" class="menufiltrodoc">
                            <nav>
                                <ul id="menudoc">
                                    <li><button onclick="cambia('uno', 'due tre quattro cinque')">144</button></li>
                                    <li><button onclick="cambia('due', 'uno tre quattro cinque')">145</button></li>
                                    <li><button  onclick="cambia('tre', 'uno due quattro cinque')">146</button></li>
                                    <li><button onclick="cambia('quattro', 'uno due tre cinque')">147</button></li>
                                    <li><button onclick="cambia('cinque', 'uno due tre quattro')">148</button></li>
                                </ul>
                            </nav>
                            <section id="uno" display="block">
                                <div id="left_section144" class="left_section">
                                     <div class="image_content">
                                           <xsl:apply-templates select="//tei:surfaceGrp[@n='gruppo144']"/>
                                     </div>
                                </div>
                                <div id="right_section144" class="right_section">    
                                    <div class="text_content">
                                            <div class="right_menu">
                                                <button onclick="apriregesto(1)">Regesto</button>
                                            </div>
                                            <xsl:apply-templates select="//tei:text/tei:group/tei:text[@n='testo144']" />
                                    </div>
                                </div>
                            </section>
                            
                            <section id="due" class="central_section">
                                <div id="left_section145" class="left_section">
                                    <div class="image_content">
                                         <xsl:apply-templates select="//tei:surfaceGrp[@n='gruppo145']"/>
                                    </div>
                                </div>
                                <div id="right_section145" class="right_section">
                                    <div class="text_content">
                                        <div class="right_menu">
                                            <button onclick="apriregesto(2)">Regesto</button>
                                        </div>
                                        <xsl:apply-templates select="//tei:text/tei:group/tei:text[@n='testo145']" />
                                    </div>
                                </div>
                            </section>
                            
                            <section id="tre" class="central_section">
                                <div id="left_section146" class="left_section">
                                    <div class="image_content">
                                          <xsl:apply-templates select="//tei:surfaceGrp[@n='gruppo146']"/>
                                    </div>
                                </div>
                                <div id="right_section146" class="right_section">
                                    <div class="text_content">
                                        <div class="right_menu">
                                            <button onclick="apriregesto(3)">Regesto</button>
                                        </div>
                                        <xsl:apply-templates select="//tei:text/tei:group/tei:text[@n='testo146']" />
                                    </div>
                                </div>
                            </section>
                           
                            <section id="quattro" class="central_section">
                                <div id="left_section147" class="left_section">
                                    <div class="image_content">
                                          <xsl:apply-templates select="//tei:surfaceGrp[@n='gruppo147']"/>
                                    </div>
                                </div>
                                <div id="right_section147" class="right_section">
                                    <div class="text_content">
                                        <div class="right_menu">
                                            <button onclick="apriregesto(4)">Regesto</button>
                                        </div>
                                             <xsl:apply-templates select="//tei:text/tei:group/tei:text[@n='testo147']" />
                                    </div>
                                </div>
                            </section>
                            <section id="cinque" class="central_section">
                                <div id="left_section148" class="left_section">
                                    <div class="image_content">
                                            <xsl:apply-templates select="//tei:surfaceGrp[@n='gruppo148']"/>
                                    </div>
                                </div>
                                <div id="right_section148" class="right_section">
                                    <div class="text_content">  
                                        <div class="right_menu">
                                            <button onclick="apriregesto(5)">Regesto</button>
                                        </div>
                                             <xsl:apply-templates select="//tei:text/tei:group/tei:text[@n='testo148']" />
            
                                    </div>
                                </div>
                            </section>
                             <div class="Elementitesto">
                                <button onclick="apri();">Filtro Elementi</button>
                                <div id="menu1" class="menufiltro">
                                    <nav>
                                        <ul><li><button onclick="coloraomitted();">Parole omesse nel testo</button></li>
                                        <li><button onclick="colorasupport();">Integrazioni su  guasto del supporto</button></li>
                                        <li><button onclick="coloranomi();">Nomi</button></li>
                                        <li><button onclick="coloraluoghi();">Luoghi</button></li>
                                        <li><button onclick="espansioni();">Espansioni</button></li></ul>
                                    </nav>
                                </div>
                            </div>
                             <div id="Liste">
                              <h1>Liste</h1>
                              <hr />
                                 <div id="menul1" class="menulist">
                                        <xsl:apply-templates select="//tei:sourceDesc/tei:listPerson" />
                                    </div>
                                <hr />
                                    <div id="menul2" class="menulist">
                                        <xsl:apply-templates select="//tei:sourceDesc/tei:listPlace" />
                                    </div>
                            </div>
                        <!--menu delle liste persone e liste luoghi-->
                        </div>
                    </div>  
                    <hr />
                    <br />
                 <div id="titlebibl">
                    <h2>Riferimeni bibliografici</h2>
                 <div id="Listbibl">
                    <xsl:apply-templates select="//tei:sourceDesc/tei:listBibl" />
                </div>
                <div id="book">
                    <xsl:apply-templates select="//tei:biblStruct" />
                </div>   
                </div>
            <footer>
                <p>versione elettronica realizzata da<br>Brai William</br></p>
            </footer>
            </div><!--global body-->
        </body>
    </html>
</xsl:template>

<!--immagine 144-->
<xsl:template match="//tei:surfaceGrp[@n='gruppo144']/tei:surface/tei:graphic">
    <img  class="image" id="image144">
          <xsl:attribute name="src">
            <xsl:value-of select="@url"/>
          </xsl:attribute>
    </img>
          <xsl:value-of select="." />
</xsl:template>

<!--immagine145-->
<xsl:template match="//tei:surfaceGrp[@n='gruppo145']/tei:surface/tei:graphic">
    <img  class="image" id="image145">
          <xsl:attribute name="src">
            <xsl:value-of select="@url"/>
          </xsl:attribute>
    </img>
          <xsl:value-of select="." />
</xsl:template>

<!--immagine146-->
<xsl:template match="//tei:surfaceGrp[@n='gruppo146']/tei:surface/tei:graphic">
    <img class="image" id="image146">
          <xsl:attribute name="src">
            <xsl:value-of select="@url"/>
          </xsl:attribute>
    </img>
          <xsl:value-of select="." />
</xsl:template>

<!--immagine147-->
<xsl:template match="//tei:surfaceGrp[@n='gruppo147']/tei:surface/tei:graphic">
    <img class="image" id="image147">
          <xsl:attribute name="src">
            <xsl:value-of select="@url"/>
          </xsl:attribute>
    </img>
          <xsl:value-of select="." />
</xsl:template>

<!--immagine148-->
<xsl:template match="//tei:surfaceGrp[@n='gruppo148']/tei:surface/tei:graphic">
    <img  class="image" id="img148">
          <xsl:attribute name="src">
            <xsl:value-of select="@url"/>
          </xsl:attribute>
    </img>
          <xsl:value-of select="." />
</xsl:template>
<!--match informazioni manoscritto generale -->

<xsl:template match="//tei:listBibl[@xml:id='Pacedant']/tei:msDesc">
    <div id="msIdentifer">
        <p><b>Luogo di conservazione</b>: <xsl:value-of select="tei:msIdentifier/tei:repository/tei:choice/tei:expan" /></p>
        <p><b>Nome</b>: <xsl:value-of select="tei:msIdentifier/tei:msName" /></p>
    </div>
    <div id="contentMs">
         <p><b>Composizione</b>:  composto dal<xsl:value-of select="tei:msIdentifier/tei:collection" /></p>
          <p>Lingua: latino</p>
          <p><b>Descrizione</b>: <xsl:value-of select="tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:p" /></p>
          <p><xsl:value-of select="tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition" /></p>
          <p><xsl:value-of select="tei:physDesc/tei:objectDesc/tei:supportDesc/tei:collation" /></p>
    </div>
</xsl:template>

<!--match generale sui p-->
<xsl:template match="tei:p">
    <xsl:for-each select="tei:milestone">
        <b><xsl:value-of select="@n" /><space /></b> 
    </xsl:for-each>
    <xsl:apply-templates />
</xsl:template>

<!--collegamenti a persName nel testo-->
<xsl:template match="tei:p//tei:persName[@ref]/tei:forename">
        <xsl:variable name="Link" select="../@ref" />
        <a href="{$Link}"  class="persName"><xsl:apply-templates /> </a>
    </xsl:template>

<!--collegameti a placeName nel testo-->
<xsl:template match="tei:p//tei:placeName[@ref]">
        <xsl:variable name="Link" select="@ref" />
        <a href="{$Link}" class="placeName"><xsl:apply-templates /> </a>
    </xsl:template>

<!--match supplied-->
<xsl:template match="tei:supplied[@reason='omitted-in-original']">
        <span class="omitted-in-original"><xsl:value-of select="." /></span>
</xsl:template>

<xsl:template match="tei:supplied[@reason='support-damage']">
         <xsl:choose>
        <xsl:when test="tei:hi[@class='app' and @rend='apex']">
            <xsl:apply-templates select="tei:hi[@class='app']" />
        </xsl:when>
        <xsl:otherwise>
             <span class="support-damage"><xsl:apply-templates /></span>
        </xsl:otherwise>
        </xsl:choose>
</xsl:template>


<xsl:template match="tei:gap">
    [...]
</xsl:template>
    
<!--match apici-->
<xsl:template match="//tei:hi[@rend='apex']">
    <xsl:choose>
        <xsl:when test="@rend='apex' and @class='app'">
            <xsl:variable name="Id" select="@xml:id" />
            <xsl:variable name="Link" select="concat('#n', $Id)" />
             <a name="{$Id}" href="{$Link}"><sup><xsl:value-of select="." /></sup></a>
        </xsl:when>
        <xsl:otherwise>
            <sup><xsl:value-of select="." /></sup>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template match="//tei:hi[@rend='italic']">
    <i><xsl:apply-templates /></i>
</xsl:template>


<!--spaziare lb-->
<xsl:template match="tei:lb">
    <br />
    <br />
</xsl:template>


<!--match prefazione 144-->
<xsl:template match="//tei:text/tei:group/tei:text[@n='testo144']">
    <div id="regesto1" class="regesto">
        <xsl:apply-templates select="tei:front" />
    </div>
    <br />
         <div class="textdoc"><xsl:apply-templates select="tei:body/tei:div[@type='144']" />                     

    <div class="footer">
        <xsl:for-each select="tei:back/tei:listApp/tei:app">
            <xsl:variable name="Namesub" select="substring-after(@to, '#')" />
            <xsl:variable name="Id" select="concat('n', $Namesub)" />
            <xsl:variable name="Link" select="@to" />
            <p><a name="{$Id}" href="{$Link}">(<b><xsl:value-of select="@n" /></b>) 
            <xsl:value-of select="tei:lem" />]</a>
            <xsl:value-of select="tei:rdgGrp/tei:rdg|tei:rdg" />
            <xsl:value-of select="tei:rdgGrp/tei:note" />
            </p><!--da aggiungere note-->
        </xsl:for-each>
    </div>
    </div>
</xsl:template>



<!--match div144-->

<xsl:template match="tei:div[@type='144']">
    <xsl:apply-templates  />
</xsl:template>


<!--match prefazione 145-->
<xsl:template match="//tei:text/tei:group/tei:text[@n='testo145']">
    <div id="regesto2" class="regesto">
         <xsl:apply-templates select="tei:front" />
    </div>
    <br />
         <div class="textdoc"><xsl:apply-templates select="tei:body/tei:div[@type='145']" />               

    <div class="footer">
        <xsl:for-each select="tei:back/tei:listApp/tei:app">
            <xsl:variable name="Namesub" select="substring-after(@to, '#')" />
              <xsl:variable name="Id" select="concat('n', $Namesub)" />
             <xsl:variable name="Link" select="@to" />
             <p><a name="{$Id}" href="{$Link}">(<b><xsl:value-of select="@n" /></b>) 
             <xsl:value-of select="tei:lem" />]</a>
             <xsl:value-of select="tei:rdgGrp/tei:rdg|tei:rdg" />
             <xsl:value-of select="tei:note" />
             </p><!--da aggiungere note e mettere xml:id negli app xml-->
        </xsl:for-each>
    </div>
    </div>   
</xsl:template>

<!--match div 145-->
<xsl:template match="tei:div[@type='145']">
    <xsl:apply-templates />
</xsl:template>


<!--match per 146-->
<xsl:template match="//tei:text/tei:group/tei:text[@n='testo146']">
    <div id="regesto3" class="regesto">
         <xsl:apply-templates select="tei:front" />
    </div>
    <br />
         <div class="textdoc"><xsl:apply-templates select="tei:body/tei:div[@type='146']" />              

    <div class="footer">
        <xsl:for-each select="tei:back/tei:listApp/tei:app">
             <xsl:variable name="Namesub" select="substring-after(@to, '#')" />
              <xsl:variable name="Id" select="concat('n', $Namesub)" />
             <xsl:variable name="Link" select="@to" />
             <p><a name="{$Id}" href="{$Link}">(<b><xsl:value-of select="@n" /></b>) 
             <xsl:value-of select="tei:lem" />]</a>
             <xsl:value-of select="tei:rdgGrp/tei:rdg|tei:rdg" />
             <xsl:value-of select="tei:note" />
             </p><!--da aggiungere note e mettere xml:id negli app xml-->
        </xsl:for-each>
    </div>
    </div>  
</xsl:template><!--substring-after($input, $substr)-->

<!--match div 146-->
<xsl:template match="tei:div[@type='146']">
    <xsl:apply-templates />
</xsl:template>



<!--match 147-->
<xsl:template match="//tei:text/tei:group/tei:text[@n='testo147']">
    <div id="regesto4" class="regesto">
         <xsl:apply-templates select="tei:front" />
    </div>
    <br />
         <div class="textdoc"><xsl:apply-templates select="tei:body/tei:div[@type='147']" /></div>
</xsl:template>

<!--matchdiv147-->
<xsl:template match="tei:div[@type='147']">
    <xsl:apply-templates />
</xsl:template>


<!--match 148-->
<xsl:template match="//tei:text/tei:group/tei:text[@n='testo148']">
    <div id="regesto5" class="regesto">
         <xsl:apply-templates select="tei:front" />
    </div>
    <br />
         <div class="textdoc"><xsl:apply-templates select="tei:body/tei:div[@type='148']" /></div>                   
</xsl:template>

<!--match div148-->
<xsl:template match="tei:div[@type='148']">
    <xsl:apply-templates  />
</xsl:template>

<!--Match dei front generali-->
<xsl:template match="tei:front">
        <h1><xsl:value-of select="tei:head" /></h1>
        <h3>Prefazione</h3>
        <p><xsl:value-of select="tei:div[@type='preface']" /></p>
        <h3>Informazioni manoscritto</h3>
        <p><xsl:apply-templates select="tei:div[@type='infmanuscript']" /></p>
        <h3>Edizioni</h3>
         <p><xsl:apply-templates select="tei:div[@type='BiblEdizioni']"  /></p>
</xsl:template>

<xsl:template match="tei:div[@type='infmanuscript']">
   <xsl:apply-templates />
</xsl:template>

<xsl:template match="tei:div[@type='BiblEdizioni']">
   <xsl:apply-templates />
</xsl:template>

<xsl:template match="tei:choice/tei:expan">
    <span class="expan"><xsl:value-of select="." /></span>
</xsl:template>
<!--Lista persone-->

<xsl:template match="//tei:sourceDesc/tei:listPerson">
    <h2>Lista persone</h2>
    <xsl:for-each select="tei:person">
       <xsl:sort select="tei:persName/tei:surname"/>
        <ul><li>
            <xsl:variable name="Id" select="@xml:id" />
            <xsl:value-of select="tei:persName/tei:surname" />
            <space /><a name="{$Id}" ><xsl:value-of select="tei:persName/tei:forename" /></a><space />
            <xsl:if test="tei:persName/tei:ref">
                <xsl:variable name="Link" select="tei:persName/tei:ref/@target"/>
                [<a href="{$Link}"><b>Link</b></a>]
            </xsl:if></li></ul>
    </xsl:for-each>
</xsl:template>

<!--Lista Luoghi-->
<xsl:template match="//tei:sourceDesc/tei:listPlace">
    <h2>Lista luoghi</h2>
    <xsl:for-each select="tei:place">
       <xsl:sort select="tei:placeName"/>
        <ul><li>
            <xsl:variable name="Id" select="@xml:id" />
            <a name="{$Id}" ><xsl:value-of select="tei:placeName" /></a>
        </li></ul>
    </xsl:for-each>
</xsl:template>


<!--Lista bibliografia-->
<xsl:template match="//tei:sourceDesc/tei:listBibl">
    <xsl:for-each select="tei:listBibl">
        <h2><xsl:value-of select="tei:head" /></h2>
        <xsl:for-each select="tei:bibl">
        <ul><li><xsl:value-of select="tei:title" />
            <space />(<xsl:for-each select="tei:author|tei:editor"> <space /><xsl:value-of select="tei:persName/tei:surname"/></xsl:for-each><space />)  
            <xsl:value-of select="tei:date" />
            <space /><xsl:for-each select="tei:biblScope"><space /><xsl:value-of select="." /></xsl:for-each></li></ul>
        </xsl:for-each>
    </xsl:for-each>
</xsl:template>

<xsl:template match="//tei:choice">
    <span class="abbr"><xsl:value-of select="tei:abbr" /></span>
    <span class="expan"><xsl:value-of select="tei:expan" /></span>
</xsl:template>

<xsl:template match="//tei:cit/tei:bibl">
    <span class="title_quote"><xsl:value-of select="." /></span>
</xsl:template>

<xsl:template match="//tei:biblStruct">
     <table>
        <h3><p>I documenti 144-48 della Pace di Dante sono contenuti all'interno del seguente libro:</p></h3>
        <tr>
            <td><img src="book.jpg" /></td>
            <td>
                <table>
                    <tr><td><b>Titolo</b>:</td><td><xsl:value-of select="tei:monogr/tei:title[@level='m' and @type='main']"/></td></tr>
                    <tr><td><b>Autore</b>:</td><td><xsl:value-of select="tei:monogr/tei:author"/></td></tr>
                    <tr><td><b>Curatori</b>:</td><td><xsl:for-each select="tei:monogr[@id='monogrbook']/tei:editor" ><xsl:value-of select="." /></xsl:for-each></td></tr>
                    <tr><td><b>Editore</b>:</td><td><xsl:value-of select="tei:monogr/tei:imprint/tei:publisher" /></td></tr>
                    <tr><td><b>Anno edizione</b>:</td><td><xsl:value-of select="tei:monogr/tei:imprint/tei:date" /></td></tr>
                    <tr><td><b>Collana</b>:</td><td><xsl:value-of select="tei:series/tei:title[@level='s' and @type='main']" /></td></tr>
                    <tr><td><b>Volume</b>:</td><td><xsl:value-of select="tei:series/tei:biblScope/tei:num" /></td></tr>
                    <tr><td><b>ISBN:</b>:</td><td>978-88-8402-963-8</td></tr>
                     
                </table>
            </td>
       </tr> 
    </table>
</xsl:template>
</xsl:stylesheet>