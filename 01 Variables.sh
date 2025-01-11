echo "-----------------------------------------------"
echo "             Declaring Variables"
echo "-----------------------------------------------"

# Declaring Variables
name="vasanth"
age=19
greeting_massage="Hello $name, How are you?"

echo "My name is $name"
echo "My age is $age"
echo $greeting_massage

echo "-----------------------------------------------"
echo "              Using Variables"
echo "-----------------------------------------------"
# Once declared, variables can be used by prefixing them with a $. You can also use curly braces {} for clarity, especially when concatenating strings.
village="parikkal"
echo "I live in $village."

# Using curly braces for clarity
echo "The village is ${village} is samle village."  # Prevents confusion with 'is samle village'

# Reassigning Variables
value=10
echo "Value is $value"
value=20
echo "Value is $value"

# Read-Only Variables: Variables can be made immutable using the readonly keyword.
readonly pi=3.14
pi=3.14159  # This will throw an error
echo "Value of pi is $pi"

echo "-----------------------------------------------"
echo "              Command substitution"
echo "-----------------------------------------------"

# Syntax
    # variable=$(command)
    # variable=`command`

# Using $(...)
current_date=$(date)
echo "The current date and time is: $current_date"

# Using backticks (`...`)
current_user=`whoami`
echo "The current user is: $current_user"

# Example with arithmetic
num_files=$(ls | wc -l)
echo "There are $num_files files in the current directory."

# Nesting with $()
nested_output=$(echo "File path: $(pwd)")
echo $nested_output
