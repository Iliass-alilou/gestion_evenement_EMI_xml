<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Evénements à l'EMI</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

</head>
<body class="subpage">

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	
        <div id="site_title"><h1><a href="index.html">Evénements à l'EMI </a></h1></div>
        
        <div class="cleaner"></div>
    </div>
    
    <div id="tooplate_menu">
        <ul>
            <li><a href="index.html">Acceuil</a></li>
            <li><a href="evenements.xml">Par Mois</a></li>
			<li><a href="evenements_type.xml">Par Catégorie</a></li>
			<li><a href="evenements_club.xml">Par Club</a></li>
			<li><a href="evenements.xml" class="current"><xsl:value-of select="club_organisateur/@club"/></a></li>
        </ul>    	
        
        
        <div class="cleaner"></div>
    </div> <!-- end of tooplate_menu -->

    <div id="tooplate_middle_subpage">
        <h2>Nouveautés</h2>
        <p>Venez explorer nos événements passionants et fabuleux du mois ...</p>
    </div>
        
    <div id="tooplate_main">
    	<h1>La liste des événements du <xsl:value-of select="club_organisateur/@club"/></h1><br/>
        <div class="col_w960 col_w960_last">
			<div class="col_w600 float_l">
			<xsl:for-each select="club_organisateur/evenement">
			
				<div class="news_box">
					<xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="icon"/></xsl:attribute>
                   </xsl:element>
                	
					<h2><xsl:value-of select="type"/> : <xsl:value-of select="titre"/></h2>
					<p class="date"><xsl:value-of select="date"/></p>                
					<p><xsl:value-of select="descriptif"/></p>
					
					<p>
					<b>Date</b> : <xsl:value-of select="date"/> à <xsl:value-of select="heure"/><br/>
					<b>Lieu</b> : <xsl:value-of select="lieu"/><br/>
					<b>Organisateur</b> : <xsl:value-of select="organisateur"/><br/>
					<b>Animateurs</b> :<br/>
					<ul>
					<xsl:for-each select="animateurs">
					<li><xsl:value-of select="nom_prenom"/>, <xsl:value-of select="fonction"/></li>
					</xsl:for-each>
					</ul>
					</p>
					
					<div class="cleaner"></div>
				</div>
				
			</xsl:for-each>
				
            </div>
            
            
			
            <div class="cleaner"></div>
		</div>
		
        <div class="cleaner"></div>
    </div> <!-- end of main -->
        
</div> <!-- end of wrapper -->

<div id="tooplate_cr_wrapper">
<p style="padding-left: 15px; padding-top: 15px">Réalisé par :</p>
		<ul>
		<li>ATMANI Ayoub <a href="mailto:ayoub.atmani@gmail.com">ayoub.atmani@gmail.com</a></li>
		<li>CHARFI Charifa <a href="mailto:charfi.charifa@gmail.com">charfi.charifa@gmail.com</a></li>
		<li>EL KADIM Chaimae <a href="mailto:midlight@hotmail.fr">midlight@hotmail.fr</a></li>
		<li>HATIMI Imad <a href="mailto:hatimi26.ih@gmail.com">hatimi26.ih@gmail.com</a></li>
		</ul>
	<div id="tooplate_cr">
    	
                Copyright © 2016 <a href="#">Ecole Mohammadia d'Ingénieurs</a> 

        
    </div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>

</xsl:template> 
</xsl:stylesheet>