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
			<li><a href="evenements.xml" class="current"><xsl:value-of select="mois_annee/@mois"/></a></li>
			<li><a href="evenements_type.xml">Par Catégorie</a></li>
			<li><a href="evenements_club.xml">Par Club</a></li>
			
        </ul>    	
        
        
        <div class="cleaner"></div>
    </div> <!-- end of tooplate_menu -->

    <div id="tooplate_middle_subpage">
		<h2>Consultez les événements selon votre calendrier, </h2>
		<br/>
		<h2> Arrangez votre temps comme vous voulez!</h2>

    </div>
        
    <div id="tooplate_main">
    	<h1>La liste des événements de <xsl:value-of select="mois_annee/@mois"/></h1><br/>
        <div class="col_w960 col_w960_last">
			<div class="col_w600 float_l">
			<xsl:for-each select="mois_annee/evenement">
			
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
            <div id="tooplate_cr">
				
					<ul>Adresse : Avenue Ibn Sina B.P 765, Agdal Rabat 10090 Maroc</ul>
					<ul>Téléphone : (+212) 537 68 71 50</ul>
					<ul>Fax : (+212) 537 77 88 53</ul>
					<ul>Email : <a href="#">contact@emi.ac.ma</a></ul>
					<ul>Site web : <a href="emi.ac.ma">www.emi.ac.ma</a></ul>

				Copyright © 2021 <a href="#">Ecole Mohammadia d'Ingénieurs</a> Tout les droits réservés 

			</div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>

</xsl:template> 
</xsl:stylesheet>