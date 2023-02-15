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
 43;
 0.00000;-0.01929;-17.48231;,
 12.36184;-0.01929;-12.36184;,
 15.09124;-25.04322;-15.09128;,
 0.00000;-25.04322;-21.34226;,
 17.48222;-0.01929;-0.00000;,
 21.34223;-25.04322;-0.00000;,
 12.36184;-0.01929;12.36180;,
 15.09124;-25.04322;15.09125;,
 0.00000;-0.01929;17.48222;,
 0.00000;-25.04322;21.34224;,
 -12.36182;-0.01929;12.36180;,
 -15.09126;-25.04322;15.09125;,
 -17.48227;-0.01929;0.00000;,
 -21.34229;-25.04322;0.00000;,
 -12.36182;-0.01929;-12.36184;,
 -15.09126;-25.04322;-15.09127;,
 0.00000;-0.01929;-17.48231;,
 0.00000;-25.04322;-21.34226;,
 10.85842;-47.16350;-10.85839;,
 0.00000;-47.16350;-15.35603;,
 15.35604;-47.16350;-0.00000;,
 10.85842;-47.16350;10.85834;,
 0.00000;-47.16350;15.35601;,
 -10.85837;-47.16350;10.85834;,
 -15.35607;-47.16350;0.00000;,
 -10.85837;-47.16350;-10.85839;,
 0.00000;-47.16350;-15.35603;,
 0.00000;9.00000;0.00000;,
 0.00000;9.00000;0.00000;,
 0.00000;9.00000;0.00000;,
 0.00000;9.00000;0.00000;,
 0.00000;9.00000;0.00000;,
 0.00000;9.00000;0.00000;,
 0.00000;9.00000;0.00000;,
 0.00000;9.00000;0.00000;,
 0.00000;-53.17463;-0.00000;,
 0.00000;-53.17463;-0.00000;,
 0.00000;-53.17463;-0.00000;,
 0.00000;-53.17463;-0.00000;,
 0.00000;-53.17463;-0.00000;,
 0.00000;-53.17463;-0.00000;,
 0.00000;-53.17463;-0.00000;,
 0.00000;-53.17463;-0.00000;;
 
 32;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;3,2,18,19;,
 4;2,5,20,18;,
 4;5,7,21,20;,
 4;7,9,22,21;,
 4;9,11,23,22;,
 4;11,13,24,23;,
 4;13,15,25,24;,
 4;15,17,26,25;,
 3;27,1,0;,
 3;28,4,1;,
 3;29,6,4;,
 3;30,8,6;,
 3;31,10,8;,
 3;32,12,10;,
 3;33,14,12;,
 3;34,16,14;,
 3;35,19,18;,
 3;36,18,20;,
 3;37,20,21;,
 3;38,21,22;,
 3;39,22,23;,
 3;40,23,24;,
 3;41,24,25;,
 3;42,25,26;;
 
 MeshMaterialList {
  1;
  32;
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
  26;
  0.000000;1.000000;0.000001;,
  -0.000000;0.596370;-0.802709;,
  0.567603;0.596370;-0.567600;,
  0.802710;0.596369;0.000000;,
  0.567602;0.596370;0.567601;,
  -0.000000;0.596370;0.802710;,
  -0.567601;0.596370;0.567602;,
  -0.802709;0.596371;0.000000;,
  -0.567602;0.596370;-0.567601;,
  -0.000000;-0.055945;-0.998434;,
  0.706000;-0.055944;-0.705999;,
  0.998434;-0.055943;0.000001;,
  0.706000;-0.055944;0.705999;,
  -0.000000;-0.055944;0.998434;,
  -0.705998;-0.055944;0.706000;,
  -0.998434;-0.055944;0.000000;,
  -0.705999;-0.055944;-0.706000;,
  -0.000000;-0.679308;-0.733853;,
  0.518912;-0.679309;-0.518912;,
  0.733854;-0.679308;0.000000;,
  0.518912;-0.679309;0.518912;,
  -0.000000;-0.679308;0.733853;,
  -0.518911;-0.679309;0.518913;,
  -0.733852;-0.679309;0.000000;,
  -0.518911;-0.679309;-0.518913;,
  0.000000;-1.000000;0.000000;;
  32;
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,1,9,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,9,17,24;,
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  3;25,17,18;,
  3;25,18,19;,
  3;25,19,20;,
  3;25,20,21;,
  3;25,21,22;,
  3;25,22,23;,
  3;25,23,24;,
  3;25,24,17;;
 }
 MeshTextureCoords {
  43;
  0.000000;0.250000;,
  0.125000;0.250000;,
  0.125000;0.500000;,
  0.000000;0.500000;,
  0.250000;0.250000;,
  0.250000;0.500000;,
  0.375000;0.250000;,
  0.375000;0.500000;,
  0.500000;0.250000;,
  0.500000;0.500000;,
  0.625000;0.250000;,
  0.625000;0.500000;,
  0.750000;0.250000;,
  0.750000;0.500000;,
  0.875000;0.250000;,
  0.875000;0.500000;,
  1.000000;0.250000;,
  1.000000;0.500000;,
  0.125000;0.750000;,
  0.000000;0.750000;,
  0.250000;0.750000;,
  0.375000;0.750000;,
  0.500000;0.750000;,
  0.625000;0.750000;,
  0.750000;0.750000;,
  0.875000;0.750000;,
  1.000000;0.750000;,
  0.062500;0.000000;,
  0.187500;0.000000;,
  0.312500;0.000000;,
  0.437500;0.000000;,
  0.562500;0.000000;,
  0.687500;0.000000;,
  0.812500;0.000000;,
  0.937500;0.000000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;;
 }
}
