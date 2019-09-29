######################################################################
#<
#
# Function:
#      = p6_aws_ds_directory_create(name, password, size)
#
# Arg(s):
#    name - 
#    password - 
#    size - 
#
#
#>
######################################################################
p6_aws_ds_directory_create() {
    local name="$1"
    local password="$2"
    local size="$3"
    shift 3

    p6_run_write_cmd aws ds create-directory --name $name --password $password --size $size "$@"
}