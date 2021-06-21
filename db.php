<?php
include('config.php');
require('fpdf.php');
//$con=mysqli_connect('localhost','root','');
//mysqli-select_db($con,'hms');

class PDF extends FPDF {
    function Header(){
        $this->Cell(12);
       $this->Image('logo.png',10,10,100);
        $this->Cell(100,10,'Client Report',0,1);

        $this->Ln(5);
        $this->SetFont('Arial','B',11);
        $this->SetFillColor(180,180,255);
        $this->SetDrawColor(50,50,100);
        $this->Cell(40,5,'Client Name',1,0,'',true);
        $this->Cell(25,5,'Client Email',1,0,'',true);
        $this->Cell(65,5,'Client Contno',1,0,'',true);
        $this->Cell(60,5,'Counseling History',1,0,'',true);

    }
    function Footer(){

        $this->Cell(190,0,'','T',1,'',true);

        $this->SetY(-15);
        $this->SetFont('Arial','',8);

        $this->Cell(0,10,'page'.$this->PageNo()."/{pages}",0,0,'C');
    }
}

$pdf = new PDF('p','mm','A4');

$pdf->AliasNbPages('{pages}');

$pdf->SetAutoPageBreak(true,15);
$pdf->AddPage();


$pdf->SetFont('Arial','',9);
$pdf->SetDrawColor(50,50,100);

$vid=$_GET['viewid'];
$query=mysqli_query($con,"select * from tblclient where ID='$vid'");
$cnt=1;
while ($data=mysqli_fetch_array($query)){
    $pdf->Cell(40,5,$data['ClientName'],LR,0);
    $pdf->Cell(25,5,$data['ClientEmail'],LR,0);
   $pdf->Cell(65,5,$data['ClientContno'],LR,0);
   $pdf->Cell(60,5,$data['Clienthis'],LR,1);
 }


 
$pdf->Output();
?>