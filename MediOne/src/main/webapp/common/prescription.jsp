<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="8kb"%>

<html class="no-js" lang="en" dir="ltr">
<head>
<title>처방전서식</title>
<style>
.hce {margin:0;padding:0;position:absolute;overflow:hidden;}
.hme {margin:0;padding:0;position:absolute;}
.hhe {margin:0;padding:0;position:relative;}
.hhi {display:inline-block;margin:0;padding:0;position:relative;background-size:contain;}
.hls {margin:0;padding:0;position:absolute;}
.hfS {margin:0;padding:0;position:absolute;}
.hcD {margin:0;padding:0;position:absolute;}
.hcI {margin:0;padding:0;position:absolute;}
.hcS {margin:0;padding:0;position:absolute;}
.hfN {margin:0;padding:0;position:relative;}
.hmB {margin:0;padding:0;position:absolute;}
.hmO {margin:0;padding:0;position:absolute;}
.hmT {margin:0;padding:0;position:absolute;}
.hpN {display:inline-block;margin:0;padding:0;position:relative;white-space:nowrap;}
.htC {display:inline-block;margin:0;padding:0;position:relative;vertical-align:top;overflow:hidden;}
.haN {display:inline-block;margin:0;padding:0;position:relative;}
.hdu {margin:0;padding:0;position:relative;}
.hdS {margin:0;padding:0;position:absolute;}
.hsC {margin:0;padding:0;position:absolute;}
.hsR {margin:0;padding:0;position:absolute;}
.hsG {margin:0;padding:0;position:absolute;}
.hsL {margin:0;padding:0;position:absolute;}
.hsT {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsE {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsA {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsP {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsV {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsO {margin:0;padding:0;position:absolute;}
.hsU {margin:0;padding:0;position:absolute;overflow:hidden;}
.hpi {margin:0;padding:0;position:absolute;}
.hch {margin:0;padding:0;position:absolute;}
.hcG {margin:0;padding:0;position:absolute;}
.heq {margin:0;padding:0;position:absolute;}
.heG {margin:0;padding:0;position:absolute;}
.htA {margin:0;padding:0;position:absolute;}
.hvi {margin:0;padding:0;position:absolute;}
.htb {margin:0;padding:0;position:absolute;}
.htG {margin:0;padding:0;position:absolute;}
.hfJ {margin:0;padding:0;position:absolute;}
.hfG {margin:0;padding:0;position:absolute;}
.hfB {margin:0;padding:0;position:absolute;}
.hfR {margin:0;padding:0;position:absolute;}
.hfC {margin:0;padding:0;position:absolute;}
.hfO {margin:0;padding:0;position:absolute;}
.hfL {margin:0;padding:0;position:absolute;}
.hfM {margin:0;padding:0;position:absolute;}
.hfE {margin:0;padding:0;position:absolute;}
.hpl {margin:0;padding:0;position:absolute;}
.hs {margin:0;padding:0;position:absolute;overflow:visible;}
.hpa {position:relative;padding:0;overflow:hidden;margin-left:2mm;margin-right:0mm;margin-bottom:2mm;margin-top:0mm;border:1px black solid;box-shadow:1mm 1mm 0 #AAAAAA;}
.hpa::after {content:'';position:absolute;margin:0;padding:0;left:0;right:0;top:0;bottom:0;background-color:white;z-index:-2;}
.hrt {display:inline-block;margin:0;padding:0;position:relative;white-space:inherit;vertical-align:middle;line-height:1.1;}
.hco {display:inline-block;margin:0;padding:0;position:relative;white-space:inherit;}
.hcc {margin:0;padding:0;position:absolute;}
.hls {clear:both;}
[onclick] {cursor:pointer;}
.cs0 {font-size:10pt;color:#000000;font-family:"바탕";}
.cs1 {font-size:11pt;color:#000000;font-family:"바탕";}
.cs2 {font-size:10pt;color:#000000;font-family:"HY헤드라인M";font-weight:bold;}
.cs3 {font-size:9pt;color:#000000;font-family:"새굴림";font-weight:bold;}
.cs4 {font-size:10pt;color:#000000;font-family:"바탕";}
.cs5 {font-size:9pt;color:#000000;font-family:"바탕";}
.cs6 {font-size:10pt;color:#000000;font-family:"바탕";letter-spacing:-0.03em;}
.cs7 {font-size:10pt;color:#000000;font-family:"돋움";}
.cs8 {font-size:9pt;color:#000000;font-family:"돋움";}
.cs9 {font-size:9.48pt;color:#000000;font-family:"바탕";}
.cs10 {font-size:20pt;color:#000000;font-family:"바탕";letter-spacing:-0.03em;}
.cs11 {font-size:18pt;color:#000000;font-family:"바탕";letter-spacing:-0.03em;font-weight:bold;}
.cs12 {font-size:11pt;color:#000000;font-family:"바탕";letter-spacing:-0.03em;font-weight:bold;}
.cs13 {font-size:11pt;color:#000000;font-family:"바탕";letter-spacing:-0.03em;}
.cs14 {font-size:18pt;color:#000000;font-family:"바탕";font-weight:bold;}
.cs15 {font-size:11pt;color:#000000;font-family:"바탕";}
.cs16 {font-size:11pt;color:#000000;font-family:"바탕";letter-spacing:-0.08em;}
.cs17 {font-size:11pt;color:#000000;font-family:"바탕";letter-spacing:-0.03em;}
.cs18 {font-size:11pt;color:#000000;font-family:"바탕";letter-spacing:-0.04em;}
.cs19 {font-size:11pt;color:#000000;font-family:"바탕";font-weight:bold;}
.cs20 {font-size:11pt;color:#000000;font-family:"휴먼명조", "HCI Poppy";}
.cs21 {font-size:10pt;color:#000000;font-family:"휴먼명조", "HCI Poppy";}
.cs22 {font-size:11pt;color:#000000;font-family:"휴먼명조", "HCI Poppy";letter-spacing:-0.05em;}
.ps0 {text-align:justify;}
.ps1 {text-align:center;}
.ps2 {text-align:center;}
.ps3 {text-align:justify;}
.ps4 {text-align:justify;}
.ps5 {text-align:justify;}
.ps6 {text-align:justify;}
.ps7 {text-align:justify;}
.ps8 {text-align:justify;}
.ps9 {text-align:justify;}
.ps10 {text-align:justify;}
.ps11 {text-align:justify;}
.ps12 {text-align:right;}
.ps13 {text-align:justify;}
.ps14 {text-align:justify;}
.ps15 {text-align:center;}
.ps16 {text-align:left;}
.ps17 {text-align:justify;}
.ps18 {text-align:justify;}
.ps19 {text-align:justify;}
.ps20 {text-align:justify;}
@media print {
.hpa {margin:0;border:0 black none;box-shadow:none;}

}

</style>
</head>
<body>
		<div class="hcD" style="left: 18.01mm; top: 25mm;">
			<div class="hcI">
				<div class="hls ps2"
					style="line-height: 5.52mm; white-space: nowrap; left: 0mm; top: -0.32mm; height: 6.35mm; width: 173.99mm;"></div>
				<div class="hls ps16"
					style="line-height: 234.34mm; white-space: nowrap; left: 0mm; top: 8.25mm; height: 234.34mm; width: 173.99mm;">
					<div class="htb"
						style="left: 0.49mm; width: 174.20mm; top: 0.49mm; height: 234.34mm; display: inline-block; position: relative; vertical-align: middle;">
						<svg class="hs" viewBox="-2.50 -2.50 179.20 239.34"
							style="left: -2.50mm; top: -2.50mm; width: 179.20mm; height: 239.34mm;">
							<path d="M0,0 L0,233.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M5.66,35.31 L5.66,54.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M8.69,198.47 L8.69,233.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M9.12,54.34 L9.12,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M14.15,54.34 L14.15,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M14.15,186.08 L14.15,192.61" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M19.18,54.34 L19.18,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M27.35,23.23 L27.35,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M27.35,198.47 L27.35,233.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M29.68,54.34 L29.68,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M34.54,54.34 L34.54,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M36.34,209.39 L36.34,216.41" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M56.67,54.34 L56.67,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M81.10,23.23 L81.10,54.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M81.58,80.09 L81.58,156.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M81.58,162.60 L81.58,192.61" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M86.75,23.23 L86.75,54.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M99.75,80.09 L99.75,156.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M99.75,162.60 L99.75,186.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M111.60,80.09 L111.60,156.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M111.60,162.60 L111.60,186.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M111.60,198.47 L111.60,233.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M116.46,23.23 L116.46,54.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M116.78,54.34 L116.78,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M127.63,80.09 L127.63,186.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M135.65,54.34 L135.65,73.64" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M173.21,0 L173.21,233.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,0 L173.42,0" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,23.23 L173.42,23.23" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,35.31 L81.16,35.31" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M86.70,35.31 L173.42,35.31" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M86.70,41.19 L173.42,41.19" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M5.60,46.47 L81.16,46.47" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M86.70,46.47 L173.42,46.47" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,54.34 L173.42,54.34" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M116.73,64.45 L173.42,64.45" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,73.63 L173.42,73.63" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M56.61,73.63 L173.42,73.63" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,80.09 L173.42,80.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,96.07 L173.42,96.07" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M127.58,149.56 L173.42,149.56" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,156.08 L173.42,156.08" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,162.60 L127.70,162.60" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,186.08 L173.42,186.08" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,192.60 L173.42,192.60" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,198.47 L173.42,198.47" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M8.64,209.39 L173.42,209.39" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M8.64,216.41 L111.67,216.41" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M8.64,226.16 L111.67,226.16" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,233.36 L173.42,233.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M9.06,64.45 L34.61,64.45" style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M34.49,73.63 L56.73,73.63"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,102.60 L127.70,102.60"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,108.47 L127.70,108.47"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,114.34 L127.70,114.34"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,120.21 L127.70,120.21"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,126.08 L127.70,126.08"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,131.95 L127.70,131.95"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,137.82 L127.70,137.82"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,143.69 L127.70,143.69"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,149.56 L127.70,149.56"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,168.47 L127.70,168.47"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,174.34 L127.70,174.34"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,180.21 L127.70,180.21"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M173.21,0 L173.21,233.36"
								style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M0,0 L0,233.36"
								style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,180.21 L127.70,180.21"
								style="stroke:#000000;stroke-linecap:butt;stroke-dasharray:0.17,0.26;stroke-width:0.12;"></path>
							<path d="M-0.20,0 L173.42,0"
								style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path></svg>
						<div class="hce"
							style="left: 0mm; top: 0mm; width: 173.21mm; height: 23.23mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps2"
										style="line-height: 5.52mm; white-space: nowrap; left: 0mm; top: -0.32mm; height: 6.35mm; width: 172.23mm;">
										<span class="hrt cs14">처 &nbsp;&nbsp;&nbsp;&nbsp;방
											&nbsp;&nbsp;&nbsp;&nbsp;전</span>
									</div>
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 8.06mm; height: 3.88mm; width: 172.23mm;"></div>
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 13.11mm; height: 3.88mm; width: 172.23mm;"></div>
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 18.16mm; height: 3.88mm; width: 172.23mm;">
										<span class="hco cs15" style="line-height: 2.91mm;"><span
											class="hcc"
											style="left: 0.87mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0); position: relative;">1</span><span
											class="hcc"
											style="left: 0mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0);">□</span></span><span
											class="hrt cs15">의료보험&nbsp;</span><span class="hco cs15"
											style="line-height: 2.91mm;"><span class="hcc"
											style="left: 0.87mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0); position: relative;">2</span><span
											class="hcc"
											style="left: 0mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0);">□</span></span><span
											class="hrt cs15">의료보호&nbsp;</span><span class="hco cs15"
											style="line-height: 2.91mm;"><span class="hcc"
											style="left: 0.87mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0); position: relative;">3</span><span
											class="hcc"
											style="left: 0mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0);">□</span></span><span
											class="hrt cs15">산재보험&nbsp;</span><span class="hco cs15"
											style="line-height: 2.91mm;"><span class="hcc"
											style="left: 0.87mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0); position: relative;">4</span><span
											class="hcc"
											style="left: 0mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0);">□</span></span><span
											class="hrt cs15">자동차보험&nbsp;</span><span class="hco cs15"
											style="line-height: 2.91mm;"><span class="hcc"
											style="left: 0.87mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0); position: relative;">5</span><span
											class="hcc"
											style="left: 0mm; font-size: 11pt; color: #000000; transform-origin: 0; -ms-transform-origin: 0; -webkit-transform-origin: 0; transform: scale(0.9, 1.0); -ms-transform: scale(0.9, 1.0); -webkit-transform: scale(0.9, 1.0);">□</span></span><span
											class="hrt cs15">기타( &nbsp;&nbsp;) 요양기관기호 :</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 23.23mm; width: 27.35mm; height: 12.08mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 26.36mm;">
										<span class="hrt cs15">교부 연월일</span>
									</div>
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 6.01mm; height: 3.88mm; width: 26.36mm;">
										<span class="hrt cs15">및 번호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 23.23mm; width: 53.75mm; height: 12.08mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.61mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 52.76mm;">
										<span class="hrt cs15">년 &nbsp;월 &nbsp;일 &nbsp;-
											&nbsp;제 &nbsp;&nbsp;&nbsp;호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.10mm; top: 23.23mm; width: 5.66mm; height: 31.11mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.81mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;">
										<span class="hrt cs15">의</span>
									</div>
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 6.01mm; height: 3.88mm; width: 5.08mm;">
										<span class="hrt cs15">료</span>
									</div>
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 12.22mm; height: 3.88mm; width: 5.08mm;">
										<span class="hrt cs15">기</span>
									</div>
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 18.43mm; height: 3.88mm; width: 5.08mm;">
										<span class="hrt cs15">관</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 86.75mm; top: 23.23mm; width: 29.70mm; height: 12.08mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.61mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 28.72mm;">
										<span class="hrt cs15">명 &nbsp;&nbsp;&nbsp;&nbsp;칭</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 116.46mm; top: 23.23mm; width: 56.75mm; height: 12.08mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.61mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 55.77mm;">
										<span class="hrt cs15">&nbsp;</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 35.31mm; width: 5.66mm; height: 19.04mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 4.56mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;">
										<span class="hrt cs15">환</span>
									</div>
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 4.86mm; height: 3.88mm; width: 5.08mm;">
										<span class="hrt cs15">자</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 5.66mm; top: 35.31mm; width: 21.69mm; height: 11.16mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.15mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 20.70mm;">
										<span class="hrt cs15">성 명</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 35.31mm; width: 53.75mm; height: 11.16mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.15mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 52.76mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 86.75mm; top: 35.31mm; width: 29.70mm; height: 5.88mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.51mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 28.72mm;">
										<span class="hrt cs15">전화번호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 116.46mm; top: 35.31mm; width: 56.75mm; height: 5.88mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.51mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 55.77mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 86.75mm; top: 41.19mm; width: 29.70mm; height: 5.28mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.20mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 28.72mm;">
										<span class="hrt cs15">팩스번호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 116.46mm; top: 41.19mm; width: 56.75mm; height: 5.28mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.20mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 55.77mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 5.66mm; top: 46.47mm; width: 21.69mm; height: 7.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 20.70mm;">
										<span class="hrt cs16">주민등록번호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 46.47mm; width: 53.75mm; height: 7.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 52.76mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 86.75mm; top: 46.47mm; width: 29.70mm; height: 7.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.50mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 28.72mm;">
										<span class="hrt cs15">e-mail주소</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 116.46mm; top: 46.47mm; width: 56.75mm; height: 7.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 55.77mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 54.34mm; width: 9.12mm; height: 19.29mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 8.13mm;">
										<span class="hrt cs15">질병</span>
									</div>
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 6.01mm; height: 3.88mm; width: 8.13mm;">
										<span class="hrt cs15">분류</span>
									</div>
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 12.22mm; height: 3.88mm; width: 8.13mm;">
										<span class="hrt cs15">기호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 9.12mm; top: 54.34mm; width: 5.04mm; height: 10.10mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 14.15mm; top: 54.34mm; width: 5.02mm; height: 10.10mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 19.18mm; top: 54.34mm; width: 8.17mm; height: 10.10mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 7.18mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 54.34mm; width: 2.33mm; height: 10.10mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 29.68mm; top: 54.34mm; width: 4.87mm; height: 10.10mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 34.54mm; top: 54.34mm; width: 22.13mm; height: 19.29mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 21.14mm;">
										<span class="hrt cs15">처 &nbsp;&nbsp;&nbsp;방</span>
									</div>
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 6.01mm; height: 3.88mm; width: 21.14mm;">
										<span class="hrt cs15">의료인의</span>
									</div>
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 12.22mm; height: 3.88mm; width: 21.14mm;">
										<span class="hrt cs15">성 &nbsp;&nbsp;&nbsp;명</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 56.67mm; top: 54.34mm; width: 60.11mm; height: 19.29mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 7.21mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 59.13mm;">
										<span class="hrt cs17">(서명 또는 날인)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 116.78mm; top: 54.34mm; width: 18.87mm; height: 10.10mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.88mm;">
										<span class="hrt cs15">면허종별</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 135.65mm; top: 54.34mm; width: 37.56mm; height: 10.10mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 36.58mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 9.12mm; top: 64.45mm; width: 5.04mm; height: 9.19mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.16mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 14.15mm; top: 64.45mm; width: 5.02mm; height: 9.19mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.16mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 19.18mm; top: 64.45mm; width: 8.17mm; height: 9.19mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.16mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 7.18mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 64.45mm; width: 2.33mm; height: 9.19mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.16mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 29.68mm; top: 64.45mm; width: 4.87mm; height: 9.19mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.16mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 5.08mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 116.78mm; top: 64.45mm; width: 18.87mm; height: 9.19mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.16mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.88mm;">
										<span class="hrt cs15">면허번호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 135.65mm; top: 64.45mm; width: 37.56mm; height: 9.19mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.16mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 36.58mm;">
										<span class="hrt cs15">제
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;호</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 73.63mm; width: 173.21mm; height: 6.46mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.80mm;">
									<div class="hls ps18"
										style="line-height: 3.10mm; white-space: nowrap; left: 1.76mm; top: -0.19mm; height: 3.88mm; width: 170.46mm;">
										<span class="hrt cs15">※환자의 요구가 있는 때에는 질병분류기호를 기재하지
											아니합니다.</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 80.09mm; width: 81.58mm; height: 15.97mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 5.55mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;">
										<span class="hrt cs15">처방 의약품의 명칭</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 80.09mm; width: 18.18mm; height: 15.97mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.03mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;">
										<span class="hrt cs15">1회&nbsp;</span>
									</div>
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 4.86mm; height: 3.88mm; width: 17.19mm;">
										<span class="hrt cs15">투약량</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 80.09mm; width: 11.85mm; height: 15.97mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;">
										<span class="hrt cs15">1일</span>
									</div>
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 4.86mm; height: 3.88mm; width: 10.87mm;">
										<span class="hrt cs15">투여</span>
									</div>
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 9.91mm; height: 3.88mm; width: 10.87mm;">
										<span class="hrt cs15">횟수</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 80.09mm; width: 16.03mm; height: 15.97mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.03mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;">
										<span class="hrt cs15">총&nbsp;</span>
									</div>
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 4.86mm; height: 3.88mm; width: 15.04mm;">
										<span class="hrt cs15">투약일수</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 80.09mm; width: 45.58mm; height: 15.97mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 5.55mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;">
										<span class="hrt cs15">용 &nbsp;&nbsp;&nbsp;&nbsp;법</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 96.07mm; width: 81.58mm; height: 6.53mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 96.07mm; width: 18.18mm; height: 6.53mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 96.07mm; width: 11.85mm; height: 6.53mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 96.07mm; width: 16.03mm; height: 6.53mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 96.07mm; width: 45.58mm; height: 18.27mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;">
										<span class="hrt cs15">매식(전,간,후) 시 &nbsp;분복용</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 102.60mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 102.60mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 102.60mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 102.60mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 108.47mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 108.47mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 108.47mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 108.47mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 114.34mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 114.34mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 114.34mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 114.34mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 114.34mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 120.21mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 120.21mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 120.21mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 120.21mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 120.21mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 126.08mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 126.08mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 126.08mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 126.08mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 126.08mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 131.95mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 131.95mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 131.95mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 131.95mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 131.95mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 137.82mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 137.82mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 137.82mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 137.82mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 137.82mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 143.69mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 143.69mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 143.69mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 143.69mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 143.69mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 149.56mm; width: 81.58mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 149.56mm; width: 18.18mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 149.56mm; width: 11.85mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 149.56mm; width: 16.03mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 149.56mm; width: 45.58mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;">
										<span class="hrt cs15">조제시 참고사항</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 156.08mm; width: 127.63mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps2"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 126.65mm;">
										<span class="hrt cs17">주사제 처방내역(원내조제 □, &nbsp;원외처방 □)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 156.08mm; width: 45.58mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 162.60mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 162.60mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 162.60mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 162.60mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 162.60mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 168.47mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 168.47mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 168.47mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 168.47mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 168.47mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 174.34mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 174.34mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 174.34mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 174.34mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 174.34mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 180.21mm; width: 81.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 80.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 180.21mm; width: 18.18mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.19mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 99.75mm; top: 180.21mm; width: 11.85mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 10.87mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 180.21mm; width: 16.03mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 15.04mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 127.63mm; top: 180.21mm; width: 45.58mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 44.59mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 186.08mm; width: 14.15mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 13.17mm;">
										<span class="hrt cs18">사용기간</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 14.15mm; top: 186.08mm; width: 67.42mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps18"
										style="line-height: 3.10mm; white-space: nowrap; left: 1.76mm; top: -0.19mm; height: 3.88mm; width: 64.67mm;">
										<span class="hrt cs15">교부일부터 (
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)일간</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 81.58mm; top: 186.08mm; width: 91.64mm; height: 6.52mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.83mm;">
									<div class="hls ps18"
										style="line-height: 3.10mm; white-space: nowrap; left: 1.76mm; top: -0.19mm; height: 3.88mm; width: 88.89mm;">
										<span class="hrt cs15">사용기간내에 약국에 제출하여야 합니다.</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 192.60mm; width: 173.21mm; height: 5.87mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps1"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 172.23mm;">
										<span class="hrt cs19">의 약 품 &nbsp;조 제 내 역</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 0mm; top: 198.47mm; width: 8.69mm; height: 34.88mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 11.90mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 7.70mm;">
										<span class="hrt cs15">조제&nbsp;</span>
									</div>
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 6.01mm; height: 3.88mm; width: 7.70mm;">
										<span class="hrt cs15">내역</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 8.69mm; top: 198.47mm; width: 18.65mm; height: 10.92mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.09mm;">
									<div class="hls ps19"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.67mm;">
										<span class="hrt cs15">조제기관의&nbsp;</span>
									</div>
									<div class="hls ps19"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 3.69mm; height: 3.88mm; width: 17.67mm;">
										<span class="hrt cs15">명칭</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 198.47mm; width: 84.26mm; height: 10.92mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 3.03mm;">
									<div class="hls ps17"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 83.27mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 198.47mm; width: 61.61mm; height: 10.92mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps20"
										style="line-height: 3.10mm; white-space: nowrap; left: 5.29mm; top: -0.19mm; height: 3.88mm; width: 55.33mm;">
										<span class="hrt cs15">처방의 변경․수정․확인․</span>
									</div>
									<div class="hls ps20"
										style="line-height: 3.10mm; white-space: nowrap; left: 5.29mm; top: 4.86mm; height: 3.88mm; width: 55.33mm;">
										<span class="hrt cs15">대체시 그 내용 등</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 8.69mm; top: 209.39mm; width: 18.65mm; height: 7.01mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.07mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.67mm;">
										<span class="hrt cs20">조제약사</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 209.39mm; width: 8.99mm; height: 7.01mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.25mm;">
									<div class="hls ps17"
										style="line-height: 2.79mm; white-space: nowrap; left: 0mm; top: -0.18mm; height: 3.53mm; width: 8mm;">
										<span class="hrt cs21">성명</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 36.34mm; top: 209.39mm; width: 75.27mm; height: 7.01mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.25mm;">
									<div class="hls ps2"
										style="line-height: 2.79mm; white-space: nowrap; left: 0mm; top: -0.18mm; height: 3.53mm; width: 74.28mm;">
										<span class="hrt cs21">(서명 또는 날인)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 111.60mm; top: 209.39mm; width: 61.61mm; height: 23.96mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 9.72mm;">
									<div class="hls ps17"
										style="line-height: 2.79mm; white-space: nowrap; left: 0mm; top: -0.18mm; height: 3.53mm; width: 60.62mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 8.69mm; top: 216.41mm; width: 18.65mm; height: 9.75mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 0.50mm;">
									<div class="hls ps19"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.67mm;">
										<span class="hrt cs20">조 제 량</span>
									</div>
									<div class="hls ps19"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 3.69mm; height: 3.88mm; width: 17.67mm;">
										<span class="hrt cs20">(조제일수)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 216.41mm; width: 84.26mm; height: 9.75mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 2.62mm;">
									<div class="hls ps17"
										style="line-height: 2.79mm; white-space: nowrap; left: 0mm; top: -0.18mm; height: 3.53mm; width: 83.27mm;"></div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 8.69mm; top: 226.16mm; width: 18.65mm; height: 7.20mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.16mm;">
									<div class="hls ps0"
										style="line-height: 3.10mm; white-space: nowrap; left: 0mm; top: -0.19mm; height: 3.88mm; width: 17.67mm;">
										<span class="hrt cs22">조제연월일</span>
									</div>
								</div>
							</div>
						</div>
						<div class="hce"
							style="left: 27.35mm; top: 226.16mm; width: 84.26mm; height: 7.20mm;">
							<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
								<div class="hcI" style="top: 1.34mm;">
									<div class="hls ps17"
										style="line-height: 2.79mm; white-space: nowrap; left: 0mm; top: -0.18mm; height: 3.53mm; width: 83.27mm;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>