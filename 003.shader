Shader "Custom/Test003"{
	Properties{
		_Color ("Main Color",Color) = (1,1,1,0.5)
		_MainTex ("Base(RGB)", 2D) = "white"{}
		_subTex ("2ndtexture" , 2D) = "white"{}
	}

	SubShader
	{
		Pass{

		Blend SrcAlpha OneMinusSrcAlpha //알파블랜딩
		
			Material{
				Diffuse[_Color]
				Ambient[_Color]
				}

				Lighting On
				SetTexture [_MainTex]
				{
					Combine texture * primary DOUBLE
				}
				SetTexture [_subTex]
				{
					ConstantColor[_Color]  

					Combine texture lerp(texture) previous ,constant 

				}
			}
		
	}

}
