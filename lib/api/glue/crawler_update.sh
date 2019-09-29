######################################################################
#<
#
# Function:
#      = p6_aws_glue_crawler_update(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_glue_crawler_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue update-crawler --name $name "$@"
}