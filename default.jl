#=
Highlight some of the default features of Julia.

This script highlights some of the default features of Julia. This script is
based on [1], which discusses the same concepts and how to set up Julia in VS
Code. After one runs the script, they should see the output in the REPL, which
stands for Read-Evaluate-Print-Loop. The following is a collection of helpful
commands in VS Code.
    (1) CMD + K        ->    clear the REPL output
    (2) CMD + /        ->    comment or uncomment a line of code
    (3) CTL + ENTR     ->    eval. line, print line, and stay
    (4) SHFT + ENTR    ->    eval. line, print line, and next line
    (5) OPT + ENTR     ->    eval. all lines, print last line, and go to end
Note, some errors are expected and kept for learning purposes. See [2] for a
full understanding of default Julia features.

[1] Date:      2024
    Authors:   doggo dot jl
    Title:     Learn Julia in 4 hours in 4K | Full Course | Julia for Absolute
               Beginners
    Type:      Video
    Publisher: YouTube
    Location:  https://www.youtube.com/watch?v=KlorfxsdWDw
[2] Date:      See Location
    Authors:   See Location
    Title:     Julia Documentation
    Type:      Documentation
    Publisher: Open Source
    Location:  https://docs.julialang.org
=#

# Use floats, integers, and rationals
r1 = 1.2
typeof(r1)
r2::Float32 = 5.6
typeof(r2)
z1 = 4
typeof(z1)
z2::Int32 = 2
typeof(z2)
r3 = z2 / z1
typeof(r3)
q1 = 1//2
typeof(q1)
q2 = 2//3
typeof(q2)
q3 = q1 + q2
typeof(q3)
q4 = z2 // z1
typeof(q4)
z3 = div(z2, z1)
typeof(z3)
z4 = z2 ÷ z1
typeof(z4)
r3 = r1 / r2
r1 // r2
z5 = div(r1, r2)
typeof(z5)
z6 = r1 ÷ r2
typeof(z6)

# Use symbols 
var = 1.2
sym = :var
eval(var)
eval(var)

# Use booleans
le1 = (3 < 2) || (2 < 3)
typeof(le1)
ne1 = false + false + true
typeof(ne1)

# Use strings and characters
s1 = "Split Between"
println(s1)
v2 =  split(s1, " ")
s2 = "\", \""
println(s2)
s3 = "\t after"
println(s3)
s4 = "Concat"
s5 = "enation"
s6 = s4 * s5
s7 = "Insert"
s8 = "ion"
s9 = "$s7$s8"
mc1 = 'α'  # Type \alpha<tab>
println(mc1)
typeof('α')
ec1 = '🐶'  # Type \:dog:<tab>
typeof(ec1)

# Use irrationals
ir1 = π
typeof(ir1)
ir2 = ℯ
typeof(ir2)
round(π, digits=5)

# Use a try-catch to send a shortened error message to the REPL
r1 = 1.2
r2 = 2.4
r1 // r2
try
    r1 // r2
catch e
    full = sprint(showerror, e)
    shortened = first(split(full, "\n"; limit=2))
    println(shortened)
end

# Use vectors and matrices
cv1 = [1, 2, 3]
typeof(cv1)
rv1 = [1 2 3]
typeof(rv1)
rv2 = Float32[1 2 3]
typeof(rv2)
cv1[1]
rv1[1, 2]
rv1[2]
rv1[2] = 5
rv1[2]
length(cv1)
length(rv1)
sum(cv1)
sum(rv1)
sort(cv1; rev = true)
cv1
sort!(cv1, rev = true)  # bang sort
cv1
push!(cv1, 4)
cv1
pop!(cv1)
cv1
m1 = [1 2 3; 4 5 6; 7 8 9]
m1[1, 2]
m1[4]  # note, Julia uses column-major order for indexing matrices
v1 = [1, 1.0, 1//3, π, '🐶', "doggo", [7 8 9]]
typeof(v1)

# Use tuples
t1 = (1, 1.0, 1//3, π, '🐶', "doggo", [7 8 9])
typeof(t1)
t2 = (1, 2, 3)
sort(t2, rev=true)
sort!(t2, rev=true)
(e1, e2, e3) = t2
e1
e2
e3
nt1 = (e1=1, e2=2, e3=3)
nt1.e1

# Use dictionaries
dog = Dict("name" => "doggo", :age => 5, 't' => "golden retriever")
dog["name"]  # Unlike named tuples, dictionaries use a hash-table lookup
dog[:age]
dog['t']
dog["name"] = 1234
dog["name"]
dog[:new] = "new value"
dog

# Use structs
struct Dog
    name::String
    age::Integer
    breed::String
end
mutable struct MutableDog
    name::String
    age::Integer
    breed::String
end
dog1 = Dog("doggo", 5, "golden retriever")
dog2 = MutableDog("doggo", 5, "golden retriever")
typeof(dog1)
typeof(dog2)
dog1.name
dog2.name
dog2.name = 1
dog2.new = "new value"
dog1.name = "doggo1"
dog2.name = "doggo2"
dog1.name
dog2.name

# Use commas
z1, z2 = 3, 7
z1
z2
r1 = 1.2, r2 = 5.6

# Use functions
task() = println("This a task")
task()
f1(v, w) = sqrt(v^2 + w^2)
f1(1, 2)
function f2(x::Int64)
    return "Int64"
end
function f2(x::Float64)
    return "Float64"
end
function f2(x::Any)
    return "Any"
end
f2(1)
f2(1.0)
f2('a')
methods(f2)
v1 = ["One", "Two", "Three"]
map(length, v1)
map(x -> length(x) + 2, v1)

# Use if statements
function check1_x(x)
    if x > 1
        println("x is greater than 1")
    elseif x < 1
        println("x is less than 1")
    else
        println("x is equal to 1")
    end
end
check1_x(0)
check1_x(1)
check1_x(2)
function check2_x(x)
    x > 1 ?
    println("x is greater than 1") :
    (x < 1 ? println("x is less than 1") : println("x is equal to 1"))
end
check2_x(0)
check2_x(1)
check2_x(2)

# Use loops
i = 1
while i <= 5
    println(i)
    i += 1
end
for i = 1:5
    println(i)
end
for i = 1:2:10
    println(i)
end
for i = 10:-2:1
    println(i)
end
v1 = [1, 2, 3, 4, 5]
for i in v1
    println(i)
end
s1 = "Hello, World!"
for c in s1
    println(c)
end
dict = Dict("name" => "doggo", :age => 5, 't' => "golden retriever")
for (key, val) in dict
    println("$key: $val")
end
v2 = [i + 1 for i in 1:5]

# Use Random
using Random: seed!
seed!(1)
rand(1)
rand(2)
seed!(1)
rand(1)
rand(2)

# Use Statistics
using Statistics: mean, std
v6 = rand(1_000)
mean(v6)
std(v6)
