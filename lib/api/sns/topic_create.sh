######################################################################
#<
#
# Function:
#      = p6_aws_sns_topic_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_sns_topic_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws sns create-topic --name $name "$@"
}