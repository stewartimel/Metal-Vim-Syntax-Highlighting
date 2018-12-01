" Vim syntax file
" Language: Apple Metal Shading Language v2.1
" Maintainer: Stewart Imel
" Latest Revision: 30 November 2018

if exists("b:current_syntax")
	finish
end

" Read the C++ syntax to start with
" Metal is based upon C++
runtime! syntax/cpp.vim
unlet b:current_syntax

syn keyword basicMetalKeywords vertex fragment constant buffer devicethreadgroup patch
syn keyword scalarMetalTypes ptrdiff_t half uchar uint

"metal half precision floating-point literal value
syn match metalFloat "\d\+[Hh]"
syn match metalFloat "\d\+\.\d*[Hh]"

"metal unsigned integer literals
syn match metalFloat "\d\+[Uu]"

syn match attributes "\[\[.*\]\]"
syn match metalTypes "\(bool\|char\|uchar\|short\|ushort\|half\|int\|uint\|float\)[2-4]"
syn match packedMetalTypes "packed_\(char\|uchar\|short\|ushort\|half\|int\|uint\|float\)[2-4]"
syn match atomicType "atomic_\(int\|uint\|bool\)"
syn match atomicTemplate "atomic<\(int\|uint\|bool\)>"
syn match matrixMetalTypes "\(half\|float\)[2-4]x[2-4]"

syn match pixelTypes "r8\(u\|s\)norm<\(half\|float\)>"
syn match pixelTypes "r16\(u\|s\)norm<float>"
syn match pixelTypes "rg8\(u\|s\)norm<\(half2\|float2\)>"
syn match pixelTypes "rg16\(u\|s\)norm<float2>"
syn match pixelTypes "rgba8\(u\|s\)norm<\(half4\|float4\)>"
syn match pixelTypes "srgba8unorm<\(half4\|float4\)>"
syn match pixelTypes "rgba16\(u\|s\)norm<float4>"
syn match pixelTypes "rgb10a2<\(half4\|float4\)>"
syn match pixelTypes "rg\(11b10f\|b9e5\)<\(half3\|float3\)>"

hi def link metalFloat Number
hi def link attributes metalTypes
hi def link packedMetalTypes metalTypes
hi def link pixelTypes metalTypes
hi def link metalTypes Type
hi def link basicMetalKeywords Constant
hi def link scalarMetalTypes Type

let b:current_syntax = "metal"
