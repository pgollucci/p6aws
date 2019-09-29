######################################################################
#<
#
# Function:
#      = p6_aws_glue_database_get(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_glue_database_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws glue get-database --name $name "$@"
}