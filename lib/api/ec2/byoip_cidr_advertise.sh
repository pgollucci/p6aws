######################################################################
#<
#
# Function:
#      = p6_aws_ec2_byoip_cidr_advertise(cidr)
#
# Arg(s):
#    cidr - 
#
#
#>
######################################################################
p6_aws_ec2_byoip_cidr_advertise() {
    local cidr="$1"
    shift 1

    p6_run_write_cmd aws ec2 advertise-byoip-cidr --cidr $cidr "$@"
}