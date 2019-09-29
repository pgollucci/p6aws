######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_alias_create(name, routing_strategy)
#
# Arg(s):
#    name - 
#    routing_strategy - 
#
#
#>
######################################################################
p6_aws_gamelift_alias_create() {
    local name="$1"
    local routing_strategy="$2"
    shift 2

    p6_run_write_cmd aws gamelift create-alias --name $name --routing-strategy $routing_strategy "$@"
}