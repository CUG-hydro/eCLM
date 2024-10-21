# Define the function signature and call it
lib = "./libhello.so"

function add(a::Int32, b::Int32)::Int32
  return ccall(
    (:add, lib),  # Function and static library path
    Int32,                            # Return type
    (Int32, Int32),                   # Argument types
    a, b                              # Arguments
  )
end

# Call the function
result = add(Int32(3), Int32(5))
println(result)
