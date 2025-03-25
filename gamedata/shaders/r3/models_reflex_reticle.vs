#include "common.h"
#include "skin.h"

#define RETICLE_SCALE 6
#define OFFSET 0.038

struct vf
{
    float4 hpos : SV_Position;
    float2 tc0 : TEXCOORD0;
};

vf _main(v_model v)
{
    vf o;

    // Screen-space vertex (applied by semantic)
    o.hpos = mul(m_WVP, v.P);

    // NDC vertex
    float4 vpos = mul(m_WVP, v.P);
    float2 vprj = ((vpos.xy * (1 + OFFSET)) / vpos.w);

    // NDC aim
    float4 apos = mul(m_WVP, float4(0, 0, 1000, 1));
    float2 aprj = apos.xy / apos.w;

    // Texture coordinate
    float aspect = screen_res.x / screen_res.y;
    float2 tc = (vprj - aprj) * float2(aspect, 1) * RETICLE_SCALE + 0.5;
    o.tc0 = tc;

    return o;
}

// Skinning
#ifdef SKIN_NONE
vf main(v_model v) { return _main(v); }
#endif

#ifdef SKIN_0
vf main(v_model_skinned_0 v) { return _main(skinning_0(v)); }
#endif

#ifdef SKIN_1
vf main(v_model_skinned_1 v) { return _main(skinning_1(v)); }
#endif

#ifdef SKIN_2
vf main(v_model_skinned_2 v) { return _main(skinning_2(v)); }
#endif

#ifdef SKIN_3
vf main(v_model_skinned_3 v) { return _main(skinning_3(v)); }
#endif

#ifdef SKIN_4
vf main(v_model_skinned_4 v) { return _main(skinning_4(v)); }
#endif
