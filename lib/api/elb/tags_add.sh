######################################################################
#<
#
# Function:
#      = p6_aws_elb_tags_add(load_balancer_names, tags)
#
# Arg(s):
#    load_balancer_names - 
#    tags - 
#
#
#>
######################################################################
p6_aws_elb_tags_add() {
    local load_balancer_names="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws elb add-tags --load-balancer-names $load_balancer_names --tags $tags "$@"
}