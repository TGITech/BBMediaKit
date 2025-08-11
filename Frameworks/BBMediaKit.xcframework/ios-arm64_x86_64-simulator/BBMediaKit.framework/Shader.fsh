/*
	Copyright (C) 2015 Apple Inc. All Rights Reserved.
	See LICENSE.txt for this sample’s licensing information
	
	Abstract:
	Fragment shader that adjusts the luminance value based on the input sliders and renders the input texture.
 */

precision mediump float;
varying vec2 texCoordVarying;

uniform float lumaThreshold;
uniform float chromaThreshold;
uniform sampler2D SamplerY;
uniform sampler2D SamplerUV;
uniform mat3 colorConversionMatrix;

void main() {
    mediump vec3 yuv;
    lowp vec3 rgb;

    yuv.x = (texture2D(SamplerY, texCoordVarying).r - (16.0 / 255.0)) * lumaThreshold;
    yuv.yz = (texture2D(SamplerUV, texCoordVarying).rg - vec2(0.5, 0.5)) * chromaThreshold;

    rgb = colorConversionMatrix * yuv;
    gl_FragColor = vec4(rgb, 1.0);
}
