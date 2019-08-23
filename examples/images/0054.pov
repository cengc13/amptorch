#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -24.43*x up 76.08*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}
light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}

#declare simple = finish {phong 0.7}
#declare pale = finish {ambient .5 diffuse .85 roughness .001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.10 roughness 0.04 }
#declare vmd = finish {ambient .0 diffuse .65 phong 0.1 phong_size 40. specular 0.500 }
#declare jmol = finish {ambient .2 diffuse .6 specular 1 roughness .001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.70 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient .15 brilliance 2 diffuse .6 metallic specular 1. roughness .001 reflection .0}
#declare glass = finish {ambient .05 diffuse .3 specular 1. roughness .001}
#declare glass2 = finish {ambient .0 diffuse .3 specular 1. reflection .25 roughness .001}
#declare Rcell = 0.050;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      translate LOC}
#end

cylinder {<-10.31, -32.52, -33.83>, <  0.52, -36.23, -23.65>, Rcell pigment {Black}}
cylinder {<  0.52, -28.82, -44.00>, < 11.35, -32.52, -33.83>, Rcell pigment {Black}}
cylinder {<  0.52,  36.23, -20.33>, < 11.35,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<-10.31,  32.52, -10.15>, <  0.52,  28.82,   0.03>, Rcell pigment {Black}}
cylinder {<-10.31, -32.52, -33.83>, <  0.52, -28.82, -44.00>, Rcell pigment {Black}}
cylinder {<  0.52, -36.23, -23.65>, < 11.35, -32.52, -33.83>, Rcell pigment {Black}}
cylinder {<  0.52,  28.82,   0.03>, < 11.35,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<-10.31,  32.52, -10.15>, <  0.52,  36.23, -20.33>, Rcell pigment {Black}}
cylinder {<-10.31, -32.52, -33.83>, <-10.31,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<  0.52, -36.23, -23.65>, <  0.52,  28.82,   0.03>, Rcell pigment {Black}}
cylinder {< 11.35, -32.52, -33.83>, < 11.35,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<  0.52, -28.82, -44.00>, <  0.52,  36.23, -20.33>, Rcell pigment {Black}}
atom(<-10.31, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #0 
atom(< -8.51, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #1 
atom(< -6.70, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #2 
atom(< -8.51, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #3 
atom(< -6.70, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #4 
atom(< -4.90, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #5 
atom(< -6.70, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #6 
atom(< -4.90, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #7 
atom(< -3.09, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #8 
atom(< -8.51, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #9 
atom(< -6.70, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #10 
atom(< -4.90, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #11 
atom(< -6.70, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #12 
atom(< -4.90, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #13 
atom(< -3.09, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #14 
atom(< -4.90, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #15 
atom(< -3.09, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #16 
atom(< -1.29, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #17 
atom(< -0.34,   7.90, -12.47>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #18 
atom(< -2.39,  -4.02, -31.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #19 
atom(< -4.10,  -9.86, -26.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #20 
atom(< -5.38,   7.84, -21.42>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #21 
atom(<  1.61,   5.09, -13.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #22 
atom(<  8.10,   9.81, -17.06>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #23 
atom(<  3.64,   1.16, -20.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #24 
atom(< -0.52,  -3.94, -23.90>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #25 
atom(<  8.51,   7.65, -21.95>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #26 
atom(<  2.00,   1.95, -22.18>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #27 
atom(< -9.92, -19.08, -28.94>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #28 
atom(<-10.31,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #29 
atom(< -8.51,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #30 
atom(< -6.70,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #31 
atom(< -8.51,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #32 
atom(< -6.70,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #33 
atom(< -4.90,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #34 
atom(< -6.70,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #35 
atom(< -4.90,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #36 
atom(< -3.09,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #37 
atom(< -8.51,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #38 
atom(< -6.70,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #39 
atom(< -4.90,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #40 
atom(< -6.70,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #41 
atom(< -4.90,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #42 
atom(< -3.09,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #43 
atom(< -4.90,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #44 
atom(< -3.09,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #45 
atom(< -1.29,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #46 
atom(< -0.34, -24.62, -24.30>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #47 
atom(< -2.39,  28.51, -19.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #48 
atom(< -4.10,  22.66, -14.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #49 
atom(< -5.38, -24.68, -33.26>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #50 
atom(<  1.61, -27.43, -25.21>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #51 
atom(<  8.10, -22.72, -28.90>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #52 
atom(<  3.64, -31.36, -32.21>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #53 
atom(< -0.52,  28.58, -12.06>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #54 
atom(<  8.51, -24.87, -33.79>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #55 
atom(<  2.00, -30.57, -34.02>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #56 
atom(< -9.92,  13.44, -17.10>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #57 
atom(< -4.90, -18.45, -34.47>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #58 
atom(< -3.09, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #59 
atom(< -1.29, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #60 
atom(< -3.09, -17.84, -36.16>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #61 
atom(< -1.29, -18.45, -34.47>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #62 
atom(<  0.52, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #63 
atom(< -1.29, -17.22, -37.86>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #64 
atom(<  0.52, -17.84, -36.16>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #65 
atom(<  2.32, -18.45, -34.47>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #66 
atom(< -3.09, -16.76, -33.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #67 
atom(< -1.29, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #68 
atom(<  0.52, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #69 
atom(< -1.29, -16.14, -35.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #70 
atom(<  0.52, -16.76, -33.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #71 
atom(<  2.32, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #72 
atom(<  0.52, -15.52, -37.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #73 
atom(<  2.32, -16.14, -35.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #74 
atom(<  4.13, -16.76, -33.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #75 
atom(<  5.07,   9.75, -17.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #76 
atom(< -7.81,  -5.87, -26.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #77 
atom(<  1.31,  -8.01, -31.63>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #78 
atom(<  0.04,   9.70, -26.51>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #79 
atom(<  7.02,   6.94, -18.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #80 
atom(<  2.69,   7.95, -11.97>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #81 
atom(< -1.78,  -0.69, -15.28>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #82 
atom(<  4.90,  -2.09, -28.98>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #83 
atom(<  3.09,   5.80, -16.86>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #84 
atom(< -3.42,   0.10, -17.09>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #85 
atom(< -4.51, -17.23, -34.02>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #86 
atom(< -4.90,  14.07, -22.63>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #87 
atom(< -3.09,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #88 
atom(< -1.29,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #89 
atom(< -3.09,  14.69, -24.33>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #90 
atom(< -1.29,  14.07, -22.63>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #91 
atom(<  0.52,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #92 
atom(< -1.29,  15.30, -26.02>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #93 
atom(<  0.52,  14.69, -24.33>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #94 
atom(<  2.32,  14.07, -22.63>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #95 
atom(< -3.09,  15.76, -22.01>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #96 
atom(< -1.29,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #97 
atom(<  0.52,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #98 
atom(< -1.29,  16.38, -23.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #99 
atom(<  0.52,  15.76, -22.01>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #100 
atom(<  2.32,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #101 
atom(<  0.52,  17.00, -25.41>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #102 
atom(<  2.32,  16.38, -23.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #103 
atom(<  4.13,  15.76, -22.01>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #104 
atom(<  5.07, -22.77, -29.39>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #105 
atom(< -7.81,  26.65, -14.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #106 
atom(<  1.31,  24.51, -19.79>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #107 
atom(<  0.04, -22.83, -38.34>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #108 
atom(<  7.02, -25.58, -30.30>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #109 
atom(<  2.69, -24.57, -23.81>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #110 
atom(< -1.78, -33.21, -27.12>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #111 
atom(<  4.90,  30.43, -17.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #112 
atom(<  3.09, -26.72, -28.70>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #113 
atom(< -3.42, -32.43, -28.93>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #114 
atom(< -4.51,  15.30, -22.19>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #115 
atom(< -4.90, -22.16, -24.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #116 
atom(< -3.09, -22.78, -22.59>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #117 
atom(< -1.29, -23.39, -20.90>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #118 
atom(< -3.09, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #119 
atom(< -1.29, -22.16, -24.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #120 
atom(<  0.52, -22.78, -22.59>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #121 
atom(< -1.29, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #122 
atom(<  0.52, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #123 
atom(<  2.32, -22.16, -24.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #124 
atom(< -3.09, -20.46, -23.67>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #125 
atom(< -1.29, -21.08, -21.98>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #126 
atom(<  0.52, -21.70, -20.28>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #127 
atom(< -1.29, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #128 
atom(<  0.52, -20.46, -23.67>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #129 
atom(<  2.32, -21.08, -21.98>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #130 
atom(<  0.52, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #131 
atom(<  2.32, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #132 
atom(<  4.13, -20.46, -23.67>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #133 
atom(< -5.76,   9.75, -17.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #134 
atom(<  3.02,  -5.87, -26.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #135 
atom(<  1.31, -11.72, -21.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #136 
atom(<  0.04,   5.99, -16.33>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #137 
atom(< -3.81,   6.94, -18.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #138 
atom(<  2.69,  11.66, -22.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #139 
atom(< -1.78,   3.02, -25.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #140 
atom(<  4.90,  -5.80, -18.81>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #141 
atom(<  3.09,   9.50, -27.04>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #142 
atom(< -3.42,   3.80, -27.27>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #143 
atom(< -4.51, -20.93, -23.85>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #144 
atom(< -4.90,  10.36, -12.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #145 
atom(< -3.09,   9.75, -10.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #146 
atom(< -1.29,   9.13,  -9.06>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #147 
atom(< -3.09,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #148 
atom(< -1.29,  10.36, -12.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #149 
atom(<  0.52,   9.75, -10.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #150 
atom(< -1.29,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #151 
atom(<  0.52,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #152 
atom(<  2.32,  10.36, -12.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #153 
atom(< -3.09,  12.06, -11.84>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #154 
atom(< -1.29,  11.44, -10.14>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #155 
atom(<  0.52,  10.83,  -8.44>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #156 
atom(< -1.29,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #157 
atom(<  0.52,  12.06, -11.84>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #158 
atom(<  2.32,  11.44, -10.14>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #159 
atom(<  0.52,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #160 
atom(<  2.32,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #161 
atom(<  4.13,  12.06, -11.84>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #162 
atom(< -5.76, -22.77, -29.39>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #163 
atom(<  3.02,  26.65, -14.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #164 
atom(<  1.31,  20.81,  -9.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #165 
atom(<  0.04, -26.53, -28.17>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #166 
atom(< -3.81, -25.58, -30.30>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #167 
atom(<  2.69, -20.86, -33.98>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #168 
atom(< -1.78, -29.51, -37.30>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #169 
atom(<  4.90,  26.73,  -6.97>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #170 
atom(<  3.09, -23.02, -38.88>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #171 
atom(< -3.42, -28.72, -39.11>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #172 
atom(< -4.51,  11.59, -12.01>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #173 
atom(<  0.52, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #174 
atom(<  2.32, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #175 
atom(<  4.13, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #176 
atom(<  2.32, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #177 
atom(<  4.13, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #178 
atom(<  5.93, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #179 
atom(<  4.13, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #180 
atom(<  5.93, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #181 
atom(<  7.74, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #182 
atom(<  2.32, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #183 
atom(<  4.13, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #184 
atom(<  5.93, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #185 
atom(<  4.13, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #186 
atom(<  5.93, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #187 
atom(<  7.74, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #188 
atom(<  5.93, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #189 
atom(<  7.74, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #190 
atom(<  9.54, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #191 
atom(< -0.34,  11.61, -22.64>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #192 
atom(< -2.39,  -7.72, -21.21>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #193 
atom(<  6.73,  -9.86, -26.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #194 
atom(<  5.45,   7.84, -21.42>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #195 
atom(<  1.61,   8.80, -23.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #196 
atom(< -2.73,   9.81, -17.06>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #197 
atom(< -7.19,   1.16, -20.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #198 
atom(< 10.31,  -3.94, -23.90>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #199 
atom(< -2.32,   7.65, -21.95>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #200 
atom(< -8.83,   1.95, -22.18>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #201 
atom(<  0.91, -19.08, -28.94>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #202 
atom(<  0.52,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #203 
atom(<  2.32,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #204 
atom(<  4.13,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #205 
atom(<  2.32,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #206 
atom(<  4.13,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #207 
atom(<  5.93,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #208 
atom(<  4.13,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #209 
atom(<  5.93,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #210 
atom(<  7.74,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #211 
atom(<  2.32,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #212 
atom(<  4.13,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #213 
atom(<  5.93,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #214 
atom(<  4.13,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #215 
atom(<  5.93,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #216 
atom(<  7.74,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #217 
atom(<  5.93,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #218 
atom(<  7.74,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #219 
atom(<  9.54,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #220 
atom(< -0.34, -20.92, -34.48>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #221 
atom(< -2.39,  24.80,  -9.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #222 
atom(<  6.73,  22.66, -14.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #223 
atom(<  5.45, -24.68, -33.26>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #224 
atom(<  1.61, -23.73, -35.39>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #225 
atom(< -2.73, -22.72, -28.90>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #226 
atom(< -7.19, -31.36, -32.21>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #227 
atom(< 10.31,  28.58, -12.06>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #228 
atom(< -2.32, -24.87, -33.79>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #229 
atom(< -8.83, -30.57, -34.02>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #230 
atom(<  0.91,  13.44, -17.10>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #231 
