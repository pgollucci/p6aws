######################################################################
#<
#
# Function:
#      = p6_aws_ec2_byoip_cidr_provision(cidr)
#
# Arg(s):
#    cidr - 
#
#
#>
######################################################################
p6_aws_ec2_byoip_cidr_provision() {
    local cidr="$1"
    shift 1

    p6_run_write_cmd aws ec2 provision-byoip-cidr --cidr $cidr "$@"
}