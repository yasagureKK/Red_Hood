xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 141;
 0.00000;-13.75320;-0.72145;,
 0.00000;10.51202;-28.71727;,
 43.71661;10.51202;-18.03965;,
 53.29029;10.51202;-2.54508;,
 39.37727;10.51202;31.12350;,
 0.00000;10.51202;50.22203;,
 47.10336;30.23243;-19.49604;,
 0.00000;30.23241;-31.23597;,
 56.12823;30.23243;-1.07145;,
 48.38629;30.23243;32.09664;,
 0.00000;30.23243;58.35032;,
 -43.71661;10.51202;-18.03965;,
 -53.29029;10.51202;-2.54508;,
 -39.37727;10.51202;31.12350;,
 -47.10336;30.23243;-19.49604;,
 -56.12823;30.23243;-1.07145;,
 -48.38629;30.23243;32.09664;,
 0.00005;67.43665;-29.12664;,
 0.00000;92.73159;9.37307;,
 43.25332;67.43677;-13.50918;,
 43.25332;67.43677;-13.50918;,
 0.00000;92.73159;9.37307;,
 51.54053;67.43674;1.05825;,
 51.54053;67.43674;1.05825;,
 0.00000;92.73159;9.37307;,
 44.43163;67.43662;27.28275;,
 44.43163;67.43662;27.28275;,
 0.00000;92.73159;9.37307;,
 0.00005;67.43665;48.04034;,
 -43.25341;67.43665;-13.50927;,
 -51.54066;67.43665;1.05822;,
 -43.25341;67.43665;-13.50927;,
 -44.43137;67.43674;27.28269;,
 -51.54066;67.43665;1.05822;,
 -44.43137;67.43674;27.28269;,
 31.69006;35.47466;114.74824;,
 45.93654;9.42656;123.30698;,
 53.72976;23.69334;94.21204;,
 37.53214;52.69244;95.98723;,
 33.96885;-19.32706;131.29837;,
 40.51484;-13.96940;87.77462;,
 0.00010;-39.88651;135.34795;,
 0.00010;-41.88042;84.58479;,
 0.00010;65.12842;104.02283;,
 37.43480;63.77817;73.93846;,
 0.00000;76.49004;72.21639;,
 55.36294;35.84209;70.14841;,
 41.81074;-4.39990;61.45851;,
 0.00010;-26.72874;47.90173;,
 37.43480;63.77817;73.93846;,
 55.36294;35.84209;70.14841;,
 40.25323;40.63934;49.36420;,
 32.77706;57.33608;51.45799;,
 41.81074;-4.39990;61.45851;,
 31.84254;18.52235;40.39272;,
 0.00010;-26.72874;47.90173;,
 0.00010;7.18817;29.57268;,
 35.64699;2.26163;153.66328;,
 24.48299;-22.95300;162.66594;,
 26.32998;13.78738;148.63838;,
 35.64699;2.26163;153.66328;,
 0.00010;26.07806;150.77376;,
 26.32998;13.78738;148.63838;,
 0.00000;32.91443;131.48506;,
 0.00010;66.99747;156.35598;,
 0.00000;47.55954;27.21769;,
 0.00000;47.55954;27.21769;,
 0.00000;47.55954;27.21769;,
 0.00000;68.35511;48.98630;,
 0.00000;47.55954;27.21769;,
 0.00000;-58.61431;194.10564;,
 24.48299;-22.95300;162.66594;,
 0.00000;-25.96058;172.97019;,
 20.12189;-16.72287;214.03057;,
 0.00000;-23.25527;218.80327;,
 29.77441;6.42817;197.08853;,
 20.12189;-16.72287;214.03057;,
 18.50693;22.50206;191.83030;,
 29.77441;6.42817;197.08853;,
 0.00010;36.02132;193.03899;,
 18.50693;22.50206;191.83030;,
 14.70773;13.54286;240.30244;,
 0.00010;69.36493;268.49830;,
 0.00010;13.54293;245.75826;,
 15.83818;24.75719;234.23257;,
 0.00010;69.36493;268.49830;,
 14.70773;13.54286;240.30244;,
 10.39326;38.46343;233.11119;,
 0.00010;69.36493;268.49830;,
 15.83818;24.75719;234.23257;,
 0.00010;46.43801;233.11119;,
 0.00010;69.36493;268.49830;,
 10.39326;38.46343;233.11119;,
 -37.53214;52.69244;95.98723;,
 -53.72976;23.69334;94.21204;,
 -45.93654;9.42656;123.30698;,
 -31.69006;35.47466;114.74824;,
 -40.51484;-13.96940;87.77462;,
 -33.96885;-19.32706;131.29837;,
 -0.00010;-41.88042;84.58479;,
 -0.00010;-39.88651;135.34795;,
 -37.43480;63.77817;73.93846;,
 -0.00010;65.12842;104.02283;,
 -55.36294;35.84209;70.14841;,
 -41.81074;-4.39990;61.45851;,
 -0.00010;-26.72874;47.90173;,
 -32.77706;57.33608;51.45799;,
 -40.25323;40.63934;49.36420;,
 -55.36294;35.84209;70.14841;,
 -37.43480;63.77817;73.93846;,
 -31.84254;18.52235;40.39272;,
 -41.81074;-4.39990;61.45851;,
 -0.00010;7.18817;29.57268;,
 -0.00010;-26.72874;47.90173;,
 -24.48299;-22.95300;162.66594;,
 -35.64699;2.26163;153.66328;,
 -35.64699;2.26163;153.66328;,
 -26.32998;13.78738;148.63838;,
 -26.32998;13.78738;148.63838;,
 -0.00010;26.07806;150.77376;,
 -0.00010;66.99747;156.35598;,
 -24.48299;-22.95300;162.66594;,
 -20.12189;-16.72287;214.03057;,
 -20.12189;-16.72287;214.03057;,
 -29.77441;6.42817;197.08853;,
 -29.77441;6.42817;197.08853;,
 -18.50693;22.50206;191.83030;,
 -18.50693;22.50206;191.83030;,
 -0.00010;36.02132;193.03899;,
 -0.00010;13.54293;245.75826;,
 -0.00010;69.36493;268.49830;,
 -14.70773;13.54286;240.30244;,
 -14.70773;13.54286;240.30244;,
 -0.00010;69.36493;268.49830;,
 -15.83818;24.75719;234.23257;,
 -15.83818;24.75719;234.23257;,
 -0.00010;69.36493;268.49830;,
 -10.39326;38.46343;233.11119;,
 -10.39326;38.46343;233.11119;,
 -0.00010;69.36493;268.49830;,
 -0.00010;46.43801;233.11119;;
 
 104;
 3;0,1,2;,
 3;0,2,3;,
 3;0,3,4;,
 3;0,4,5;,
 4;6,2,1,7;,
 4;8,3,2,6;,
 4;9,4,3,8;,
 4;10,5,4,9;,
 3;11,1,0;,
 3;12,11,0;,
 3;13,12,0;,
 3;5,13,0;,
 4;7,1,11,14;,
 4;14,11,12,15;,
 4;15,12,13,16;,
 4;16,13,5,10;,
 3;17,18,19;,
 4;17,19,6,7;,
 3;20,21,22;,
 4;20,22,8,6;,
 3;23,24,25;,
 4;23,25,9,8;,
 3;26,27,28;,
 4;26,28,10,9;,
 3;29,18,17;,
 4;29,17,7,14;,
 3;30,21,31;,
 4;30,31,14,15;,
 3;32,24,33;,
 4;32,33,15,16;,
 3;28,27,34;,
 4;28,34,16,10;,
 4;35,36,37,38;,
 4;36,39,40,37;,
 4;39,41,42,40;,
 4;43,38,44,45;,
 4;38,37,46,44;,
 4;37,40,47,46;,
 4;40,42,48,47;,
 4;49,50,51,52;,
 4;50,53,54,51;,
 4;53,55,56,54;,
 4;57,58,39,36;,
 4;36,35,59,60;,
 4;61,62,35,63;,
 3;64,38,43;,
 3;64,63,35;,
 3;64,35,38;,
 3;65,52,51;,
 3;66,51,54;,
 3;67,54,56;,
 4;52,68,45,49;,
 3;69,68,52;,
 3;70,71,72;,
 3;70,41,39;,
 3;70,39,71;,
 4;73,74,72,71;,
 4;75,76,58,57;,
 4;77,78,60,59;,
 4;79,80,62,61;,
 3;81,82,83;,
 4;81,83,74,73;,
 3;84,85,86;,
 4;84,86,76,75;,
 3;87,88,89;,
 4;87,89,78,77;,
 3;90,91,92;,
 4;90,92,80,79;,
 4;93,94,95,96;,
 4;94,97,98,95;,
 4;97,99,100,98;,
 4;45,101,93,102;,
 4;101,103,94,93;,
 4;103,104,97,94;,
 4;104,105,99,97;,
 4;106,107,108,109;,
 4;107,110,111,108;,
 4;110,112,113,111;,
 4;95,98,114,115;,
 4;116,117,96,95;,
 4;63,96,118,119;,
 3;102,93,120;,
 3;96,63,120;,
 3;93,96,120;,
 3;107,106,65;,
 3;110,107,66;,
 3;112,110,67;,
 4;109,45,68,106;,
 3;106,68,69;,
 3;72,121,70;,
 3;98,100,70;,
 3;121,98,70;,
 4;121,72,74,122;,
 4;115,114,123,124;,
 4;117,116,125,126;,
 4;119,118,127,128;,
 3;129,130,131;,
 4;122,74,129,131;,
 3;132,133,134;,
 4;124,123,132,134;,
 3;135,136,137;,
 4;126,125,135,137;,
 3;138,139,140;,
 4;128,127,138,140;;
 
 MeshMaterialList {
  1;
  104;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.140800;0.156800;0.172800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  110;
  -0.000000;-0.472653;-0.881249;,
  0.483432;-0.550792;-0.680384;,
  0.638834;-0.765122;0.080490;,
  0.557790;-0.669515;0.490530;,
  -0.000000;-0.682276;0.731094;,
  -0.000000;-0.996177;-0.087364;,
  -0.000000;0.999453;-0.033070;,
  0.000000;-0.000871;-1.000000;,
  0.622146;0.001963;-0.782899;,
  0.992805;-0.042839;-0.111818;,
  0.771355;-0.074781;0.631996;,
  -0.000000;-0.059110;0.998252;,
  -0.483432;-0.550792;-0.680384;,
  -0.638834;-0.765122;0.080490;,
  -0.557790;-0.669515;0.490530;,
  -0.622145;0.001962;-0.782899;,
  -0.992805;-0.042839;-0.111817;,
  -0.771354;-0.074779;0.631997;,
  0.513318;0.576008;-0.636176;,
  0.000000;0.532238;-0.846595;,
  0.793554;0.600955;-0.095529;,
  0.617817;0.589943;0.519875;,
  -0.000000;0.583305;0.812253;,
  -0.513317;0.576006;-0.636177;,
  -0.793554;0.600955;-0.095528;,
  -0.617815;0.589943;0.519877;,
  0.867055;-0.139173;-0.478378;,
  -0.867055;-0.139173;-0.478378;,
  0.884037;0.036724;0.465971;,
  0.000000;0.889249;0.457423;,
  0.674968;0.559198;0.481369;,
  0.926365;0.113450;0.359134;,
  0.804147;-0.591206;0.061830;,
  0.515293;-0.847022;-0.130484;,
  0.325352;0.929846;0.171852;,
  0.669651;0.655141;0.349797;,
  0.971601;0.077154;0.223693;,
  0.788953;-0.610093;-0.073067;,
  0.547689;-0.824185;-0.144067;,
  -0.000000;0.999545;0.030176;,
  0.644370;0.764638;-0.010723;,
  0.965305;0.152239;-0.212153;,
  0.755353;-0.455259;-0.471361;,
  0.520378;-0.648422;-0.555658;,
  0.510361;0.640157;-0.574222;,
  0.690729;0.225383;-0.687092;,
  0.552503;-0.119660;-0.824877;,
  0.407865;-0.258260;-0.875756;,
  0.000000;0.543370;0.839493;,
  0.812646;-0.551556;0.188130;,
  0.957146;0.164372;0.238438;,
  0.606229;0.771224;0.194162;,
  0.431995;0.889537;0.148676;,
  0.307787;0.950849;-0.033959;,
  0.000000;0.850801;-0.525488;,
  -0.000000;0.324949;-0.945731;,
  0.727669;-0.562534;0.392496;,
  0.000000;-0.874832;0.484427;,
  0.969071;0.198959;0.146002;,
  0.707473;0.702925;-0.073332;,
  0.540092;0.823374;-0.174227;,
  0.718342;-0.247868;0.650036;,
  0.326907;-0.467155;0.821521;,
  0.957998;0.232903;0.167322;,
  0.769679;0.613515;-0.176615;,
  0.567636;0.753668;-0.331322;,
  -0.884037;0.036724;0.465971;,
  -0.674968;0.559198;0.481369;,
  -0.926365;0.113450;0.359134;,
  -0.804147;-0.591206;0.061830;,
  -0.515293;-0.847022;-0.130484;,
  -0.325352;0.929846;0.171852;,
  -0.669651;0.655141;0.349797;,
  -0.971601;0.077154;0.223693;,
  -0.788953;-0.610093;-0.073067;,
  -0.547689;-0.824185;-0.144067;,
  -0.644370;0.764638;-0.010723;,
  -0.965305;0.152239;-0.212153;,
  -0.755353;-0.455259;-0.471361;,
  -0.520378;-0.648422;-0.555658;,
  -0.510361;0.640157;-0.574222;,
  -0.690729;0.225383;-0.687092;,
  -0.552503;-0.119660;-0.824877;,
  -0.407865;-0.258260;-0.875756;,
  -0.812646;-0.551556;0.188130;,
  -0.957146;0.164372;0.238438;,
  -0.606229;0.771224;0.194162;,
  -0.431995;0.889537;0.148676;,
  -0.307787;0.950849;-0.033959;,
  -0.727669;-0.562534;0.392496;,
  -0.969071;0.198959;0.146002;,
  -0.707473;0.702925;-0.073332;,
  -0.540092;0.823374;-0.174227;,
  -0.718342;-0.247868;0.650036;,
  -0.326907;-0.467155;0.821521;,
  -0.957998;0.232903;0.167322;,
  -0.769679;0.613515;-0.176615;,
  -0.567636;0.753668;-0.331322;,
  0.717286;-0.170610;0.675569;,
  0.000000;-0.589463;0.807796;,
  0.428506;-0.532602;0.729875;,
  0.275483;0.522345;0.807010;,
  0.735435;-0.677104;-0.025788;,
  0.000000;-0.995192;0.097940;,
  0.541408;0.705610;-0.457157;,
  -0.428506;-0.532602;0.729875;,
  -0.717286;-0.170610;0.675569;,
  -0.275483;0.522345;0.807010;,
  -0.735435;-0.677104;-0.025788;,
  -0.541408;0.705610;-0.457157;;
  104;
  3;5,0,1;,
  3;5,1,2;,
  3;5,2,3;,
  3;5,3,4;,
  4;8,1,0,7;,
  4;9,26,1,8;,
  4;10,3,2,9;,
  4;11,4,3,10;,
  3;12,0,5;,
  3;13,12,5;,
  3;14,13,5;,
  3;4,14,5;,
  4;7,0,12,15;,
  4;15,12,27,16;,
  4;16,13,14,17;,
  4;17,14,4,11;,
  3;19,6,18;,
  4;19,18,8,7;,
  3;18,6,20;,
  4;18,20,9,8;,
  3;20,6,21;,
  4;20,21,10,9;,
  3;21,6,22;,
  4;21,22,11,10;,
  3;23,6,19;,
  4;23,19,7,15;,
  3;24,6,23;,
  4;24,23,15,16;,
  3;25,6,24;,
  4;25,24,16,17;,
  3;22,6,25;,
  4;22,25,17,11;,
  4;30,31,36,35;,
  4;31,32,37,36;,
  4;32,33,38,37;,
  4;34,35,40,39;,
  4;35,36,41,40;,
  4;36,37,42,41;,
  4;37,38,43,42;,
  4;40,41,45,44;,
  4;41,42,46,45;,
  4;42,43,47,46;,
  4;50,49,32,31;,
  4;31,30,51,50;,
  4;52,51,30,29;,
  3;53,35,34;,
  3;98,99,100;,
  3;98,30,35;,
  3;55,44,45;,
  3;55,45,46;,
  3;55,46,47;,
  4;44,54,39,40;,
  3;55,54,44;,
  3;48,101,48;,
  3;102,33,32;,
  3;102,32,49;,
  4;56,57,103,49;,
  4;58,56,49,50;,
  4;59,58,50,51;,
  4;60,59,51,52;,
  3;61,28,62;,
  4;61,62,57,56;,
  3;63,28,61;,
  4;63,61,56,58;,
  3;64,28,63;,
  4;64,63,58,59;,
  3;65,104,64;,
  4;65,64,59,60;,
  4;72,73,68,67;,
  4;73,74,69,68;,
  4;74,75,70,69;,
  4;39,76,72,71;,
  4;76,77,73,72;,
  4;77,78,74,73;,
  4;78,79,75,74;,
  4;80,81,77,76;,
  4;81,82,78,77;,
  4;82,83,79,78;,
  4;68,69,84,85;,
  4;85,86,67,68;,
  4;29,67,86,87;,
  3;71,72,88;,
  3;105,99,106;,
  3;72,67,106;,
  3;81,80,55;,
  3;82,81,55;,
  3;83,82,55;,
  4;76,39,54,80;,
  3;80,54,55;,
  3;48,107,48;,
  3;69,70,108;,
  3;84,69,108;,
  4;84,103,57,89;,
  4;85,84,89,90;,
  4;86,85,90,91;,
  4;87,86,91,92;,
  3;94,66,93;,
  4;89,57,94,93;,
  3;93,66,95;,
  4;90,89,93,95;,
  3;95,66,96;,
  4;91,90,95,96;,
  3;96,109,97;,
  4;92,91,96,97;;
 }
 MeshTextureCoords {
  141;
  0.263410;0.944400;,
  0.158990;0.861250;,
  0.228640;0.861250;,
  0.261810;0.861250;,
  0.333890;0.861250;,
  0.352770;0.861250;,
  0.217420;0.812950;,
  0.117170;0.812950;,
  0.262550;0.812950;,
  0.343800;0.812950;,
  0.408100;0.812950;,
  0.228640;0.861250;,
  0.261810;0.861250;,
  0.333890;0.861250;,
  0.217420;0.812950;,
  0.262550;0.812950;,
  0.343800;0.812950;,
  0.128220;0.742130;,
  0.137260;0.684180;,
  0.173340;0.742130;,
  0.226510;0.741310;,
  0.233940;0.682700;,
  0.246810;0.741310;,
  0.288280;0.741310;,
  0.309320;0.682700;,
  0.324840;0.741310;,
  0.379350;0.741310;,
  0.408440;0.682700;,
  0.408290;0.741310;,
  0.173340;0.742130;,
  0.246810;0.741310;,
  0.226510;0.741310;,
  0.324840;0.741310;,
  0.288280;0.741310;,
  0.379350;0.741310;,
  0.125000;0.250000;,
  0.250000;0.250000;,
  0.250000;0.375000;,
  0.125000;0.375000;,
  0.375000;0.250000;,
  0.375000;0.375000;,
  0.500000;0.250000;,
  0.500000;0.375000;,
  0.000000;0.375000;,
  0.125000;0.500000;,
  0.000000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.125000;0.625000;,
  0.250000;0.625000;,
  0.250000;0.750000;,
  0.125000;0.750000;,
  0.375000;0.625000;,
  0.375000;0.750000;,
  0.500000;0.625000;,
  0.500000;0.750000;,
  0.281250;0.187500;,
  0.343750;0.187500;,
  0.156250;0.187500;,
  0.218750;0.187500;,
  0.031250;0.187500;,
  0.093750;0.187500;,
  0.000000;0.250000;,
  0.000000;0.307590;,
  0.187500;0.875000;,
  0.312500;0.875000;,
  0.437500;0.875000;,
  0.000000;0.000000;,
  0.093750;0.437500;,
  0.484380;0.218750;,
  0.406250;0.187500;,
  0.468750;0.187500;,
  0.417170;0.165650;,
  0.458860;0.167720;,
  0.292140;0.165720;,
  0.332830;0.165650;,
  0.166080;0.167840;,
  0.207860;0.165720;,
  0.040600;0.168790;,
  0.083920;0.167840;,
  0.424410;0.151190;,
  0.437500;0.125000;,
  0.451950;0.153900;,
  0.300980;0.148040;,
  0.312500;0.125000;,
  0.325590;0.151190;,
  0.176450;0.147100;,
  0.187500;0.125000;,
  0.199020;0.148040;,
  0.051460;0.147080;,
  0.062500;0.125000;,
  0.073550;0.147100;,
  0.125000;0.375000;,
  0.250000;0.375000;,
  0.250000;0.250000;,
  0.125000;0.250000;,
  0.375000;0.375000;,
  0.375000;0.250000;,
  0.500000;0.375000;,
  0.500000;0.250000;,
  0.125000;0.500000;,
  0.000000;0.375000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.125000;0.750000;,
  0.250000;0.750000;,
  0.250000;0.625000;,
  0.125000;0.625000;,
  0.375000;0.750000;,
  0.375000;0.625000;,
  0.500000;0.750000;,
  0.500000;0.625000;,
  0.343750;0.187500;,
  0.281250;0.187500;,
  0.218750;0.187500;,
  0.156250;0.187500;,
  0.093750;0.187500;,
  0.031250;0.187500;,
  0.000000;0.307590;,
  0.406250;0.187500;,
  0.417170;0.165650;,
  0.332830;0.165650;,
  0.292140;0.165720;,
  0.207860;0.165720;,
  0.166080;0.167840;,
  0.083920;0.167840;,
  0.040600;0.168790;,
  0.451950;0.153900;,
  0.437500;0.125000;,
  0.424410;0.151190;,
  0.325590;0.151190;,
  0.312500;0.125000;,
  0.300980;0.148040;,
  0.199020;0.148040;,
  0.187500;0.125000;,
  0.176450;0.147100;,
  0.073550;0.147100;,
  0.062500;0.125000;,
  0.051460;0.147080;;
 }
}
