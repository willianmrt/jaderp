<?php 
require('includes/fpdf/fpdf.php'); 

define('FPDF_FONTPATH','includes/fpdf/font/'); 

class JAdERPDF extends FPDF 
{ 

	var $angle=0;
	var $projects; 
	var $records; 
	var $currentRecord=0; 
	var $currentContext; 
	var $currentProject; 
	var $margin=.635; 
	
	function Rotate($angle,$x=-1,$y=-1) 
	{ 
	    if($x==-1) 
	        $x=$this->x; 
	    if($y==-1) 
	        $y=$this->y; 
	    if($this->angle!=0) 
	        $this->_out('Q'); 
	    $this->angle=$angle; 
	    if($angle!=0) 
	    { 
	        $angle*=M_PI/180; 
	        $c=cos($angle); 
	        $s=sin($angle); 
	        $cx=$x*$this->k; 
	        $cy=($this->h-$y)*$this->k; 
	        $this->_out(
	                sprintf('q %.5f %.5f %.5f %.5f %.2f %.2f cm 1 0 0 1 %.2f %.2f cm',
	                        $c,$s,-$s,$c,$cx,$cy,-$cx,-$cy)); 
	    } 
	} 
	function FancyTable($header,$data)
	{
	    //Couleurs, épaisseur du trait et police grasse
	    $this->SetFillColor(255,0,0);
	    $this->SetTextColor(255);
	    $this->SetDrawColor(128,0,0);
	    $this->SetLineWidth(.3);
	    $this->SetFont('','B');
	    //En-tête
	    $w=array(40,35,45,40);
	    for($i=0;$i<count($header);$i++)
	        $this->Cell($w[$i],7,$header[$i],1,0,'C',1);
	    $this->Ln();
	    //Restauration des couleurs et de la police
	    $this->SetFillColor(224,235,255);
	    $this->SetTextColor(0);
	    $this->SetFont('');
	    //Données
	    $fill=false;
	    foreach($data as $row)
	    {
	        $this->Cell($w[0],6,$row[0],'LR',0,'L',$fill);
	        $this->Cell($w[1],6,$row[1],'LR',0,'L',$fill);
	        $this->Cell($w[2],6,number_format($row[2],0,',',' '),'LR',0,'R',$fill);
	        $this->Cell($w[3],6,number_format($row[3],0,',',' '),'LR',0,'R',$fill);
	        $this->Ln();
	        $fill=!$fill;
	    }
	    $this->Cell(array_sum($w),0,'','T');
	}
	

	function LoadData($file)
	{
	    //Lecture des lignes du fichier
	    $lines=file($file);
	    $data=array();
	    foreach($lines as $line)
	        $data[]=explode(';',chop($line));
	    return $data;
	}
}