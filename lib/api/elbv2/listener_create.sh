######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_listener_create(load_balancer_arn, protocol, port, default_actions)
#
# Arg(s):
#    load_balancer_arn - 
#    protocol - 
#    port - 
#    default_actions - 
#
#
#>
######################################################################
p6_aws_elbv2_listener_create() {
    local load_balancer_arn="$1"
    local protocol="$2"
    local port="$3"
    local default_actions="$4"
    shift 4

    p6_run_read_cmd aws elbv2 create-listener --load-balancer-arn $load_balancer_arn --protocol $protocol --port $port --default-actions $default_actions "$@"
}