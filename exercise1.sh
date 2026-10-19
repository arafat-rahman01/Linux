read name
read age
curr_year=$(date +%Y)
birth_year=$((curr_year - age))

echo "Name: $name, Age: $age, Birth Year: $birth_year"