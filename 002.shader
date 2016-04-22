Shader "Test001"{
	SubShader{
	Pass{
		Color(1,1,1,1)
		}
	}
}
//빛의 영향을 받지 않고 색깔만 있는 셰이더


Shader "Custom/Test002"{
	Properties{
		_Color ("Color", Color) = (1,1,1,1)
	}

	SubShader
	{
		Pass{
			Material
			{
				Diffuse[_Color]
				Ambient(1,1,1,1)
			}
			Lighting On
		}	
	}

}
//빛의 영향을 받는 셰이더
