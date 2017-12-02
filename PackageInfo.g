#############################################################################
##
##  PackageInfo.g  file for the package XModAlg 
##  Zekeriya Arvasi and Alper Odabas 
##

SetPackageInfo( rec(
PackageName := "XModAlg",
Subtitle := "Crossed Modules and Cat1-Algebras",

Version := "1.14",
Date := "02/12/2017",

##  duplicate these values for inclusion in the manual: 
##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "1.14">
##  <!ENTITY ZIPFILENAME "xmodalg-1.14.zip">
##  <!ENTITY HTMLFILENAME "xmodalg114.html">
##  <!ENTITY RELEASEDATE "02/12/2017">
##  <!ENTITY LONGRELEASEDATE "2nd December 2017">
##  <!ENTITY COPYRIGHTYEARS "2014-2017">
##  <#/GAPDoc>

PackageWWWHome := 
  "http://fef.ogu.edu.tr/matbil/aodabas/xmodalg/",

ArchiveURL := "http://fef.ogu.edu.tr/matbil/aodabas/xmodalg/xmodalg-1.14", 
ArchiveFormats := "-win.zip",

Persons := [
    rec(
    LastName      := "Arvasi",
    FirstNames    := "Zekeriya",
    IsAuthor      := true,
    Email         := "zarvasi@ogu.edu.tr",
    PostalAddress := Concatenation( [ 
                       "Prof. Dr. Z. Arvasi \n",
                       "Osmangazi University \n",
                       "Arts and Sciences Faculty \n",
                       "Department of Mathematics and Computer Science \n",
                       "Eskisehir \n",
                       "Turkey"] ),
    Place         := "Eskisehir",
    Institution   := "Osmangazi University"
  ),
    rec(
    LastName      := "Odabas",
    FirstNames    := "Alper",
	IsMaintainer  := true,
    IsAuthor      := true,
    Email         := "aodabas@ogu.edu.tr",
    PostalAddress := Concatenation( [ 
                       "Dr. A. Odabas \n",
                       "Osmangazi University \n",
                       "Arts and Sciences Faculty \n",
                       "Department of Mathematics and Computer Science \n",
                       "Eskisehir \n",
                       "Turkey"] ),
    Place         := "Eskisehir",
    Institution   := "Osmangazi University"
  )
],

Status := "deposited",
CommunicatedBy := "",
AcceptDate := "",

README_URL := 
  Concatenation( ~.PackageWWWHome, "README.md" ),
PackageInfoURL := 
  Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),

AbstractHTML :=
 "The <span class=\"pkgname\">XModAlg</span> package provides a collection of \
functions for computing with crossed modules and cat1-algebras \
and morphisms of these structures.",

PackageDoc := rec(
  BookName  := "XModAlg",
  ArchiveURLSubset := ["doc", "doc/manual.pdf"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Crossed Modules and Cat1-Algebras in GAP",
  Autoload  := false
),

Dependencies := rec(
  GAP := ">=4.7",
  NeededOtherPackages := [ ["XMod", ">=2.64"], ["LAGUNA", ">=3.7.0"] ],
  SuggestedOtherPackages := [ ["GAPDoc", ">= 1.5.1" ] ],   
  ExternalConditions := [ ]
),

AvailabilityTest := ReturnTrue,

BannerString := Concatenation( 
  "-----------------------------------------------------------------------------\n",
  "Loading XModAlg ", String( ~.Version ), " (", String( ~.Date ), ") for GAP 4.8 \n", 
  "Methods for crossed modules of commutative algebras and cat1-algebras\n",
  "by Zekeriya Arvasi (zarvasi@ogu.edu.tr) and Alper Odabas (aodabas@ogu.edu.tr).\n"
),

Autoload := false,

TestFile := "tst/testall.g",

Keywords := ["crossed module of algebras","cat1-algebras"]

));
