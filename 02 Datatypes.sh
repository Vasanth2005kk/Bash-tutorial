#     Data Type	            Description	                                Example

# String	                Default type for variables	                name="Alice"
# Integer	                Used in arithmetic operations	            num=$((5 + 3))
# Array	                    Indexed list of values	                    arr=(10 20 30)
# Associative Array	        Key-value pairs (Bash 4.0+)	                fruits[apple]="red"
# Boolean	                Represented as strings or conditions	    is_valid=true
# Null/Unset	            Empty or undefined variables	            unset var

echo "-----------------------------------------------"
echo "              String Data Type                  "
echo "-----------------------------------------------"

frist_name="vasanth"
echo "My Frist Name: $name"

# concatenation
last_name="vel"
echo "MY Full Name: ${frist_name}a$last_name"


echo "-----------------------------------------------"
echo "              Integer Data Type                  "
echo "-----------------------------------------------"


# Declaring and using integers
num1=10
num2=20
# Arithmetic operations using $((...))
sum=$((num1 + num2))
diff=$((num2 - num1))
prod=$((num1 * num2))
div=$((num2 / num1))

echo "Sum: $sum"       # Output: Sum: 30
echo "Difference: $diff" # Output: Difference: 10
echo "Product: $prod"  # Output: Product: 200
echo "Division: $div"  # Output: Division: 2

echo "-----------------------------------------------"
echo "              Array Data Type                  "
echo "-----------------------------------------------"

# Indexed array
arr=(10 20 30 40)

# Accessing elements
echo ${arr[0]}   # Output: 10
echo ${arr[1]}   # Output: 20

# Access all elements
echo ${arr[@]}   # Output: 10 20 30 40

# Length of the array
echo ${#arr[@]}  # Output: 4

# Slicing the array 
echo ${arr[@]:1:2}  # Output: 20 30

arr[2]=50
echo ${arr[@]}   # Output: 10 20 50 40




echo "-----------------------------------------------"
echo "   Associative Array (Dictionary) Data Type                  "
echo "-----------------------------------------------"

declare -A fruits

# Adding key-value pairs
fruits[apple]="red"
fruits[banana]="yellow"

# Accessing values
echo ${fruits[apple]}   # Output: red

# Access all keys
echo ${!fruits[@]}      # Output: apple banana

# Access all values
echo ${fruits[@]}       # Output: red yellow


echo "-----------------------------------------------"
echo "                 Boolean Data Type   "
echo "-----------------------------------------------"


is_valid=true
if [ "$is_valid" = "true" ]; then
    echo "The condition is true."
else
    echo "The condition is false."
fi


echo "-----------------------------------------------"
echo "                 Null/Unset Data Type   "
echo "-----------------------------------------------"

# A variable can be null or unset. You can use special operators to check or assign default values.

unset var
echo $var          # Output: (empty)

# Assign default value if unset
echo ${var:-"default"}  # Output: default

if [ -z "$var" ]; then
    echo "Variable is unset or empty."
fi
