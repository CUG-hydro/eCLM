# using NCDatasets

lib = "bld/clm5/libclm.so"
# lib = "bld/clm5/libclm.a"
# real(r8) function daylength(lat, decl)
const FT = Cdouble

daylength(lat::FT, decl::FT) = 
  @ccall lib.__daylengthmod_MOD_daylength(lat::Ref{FT}, decl::Ref{FT})::FT

lat = 20.0 |> deg2rad
decl = 20.0 |> deg2rad

@show daylength(lat, decl)

## Fix curl error
# > /home/kong/packages/julias/julia-1.10/bin/../lib/julia/libcurl.so.4: version `CURL_OPENSSL_4' not found (required by /lib/x86_64-linux-gnu/libnetcdf.so.19)

# /home/kong/packages/julias/julia-1.10/bin/../lib/julia/libcurl.so.4 -> libcurl.so.4.8.0
# ll /home/kong/packages/julias/julia-1.10/lib/julia/libcurl.so.4

# ln -sf /home/kong/packages/julias/julia-1.10/lib/julia/libcurl.so.4.8.0 /home/kong/packages/julias/julia-1.10/lib/julia/libcurl.so.4
# ln -sf /usr/lib/x86_64-linux-gnu/libcurl.so.4.7.0 /home/kong/packages/julias/julia-1.10/lib/julia/libcurl.so.4


## Julia
# ln -sf libcurl.so.4.8.0 /home/kong/packages/julias/julia-1.10/lib/julia/libcurl.so.4
