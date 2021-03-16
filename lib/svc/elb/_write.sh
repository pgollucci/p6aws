######################################################################
#<
#
# Function: p6_aws_svc_elb_create(elb_name, [listeners=http], [subnet_type=Public], [vpc_id=$AWS_VPC])
#
#  Args:
#	elb_name -
#	OPTIONAL listeners - [http]
#	OPTIONAL subnet_type - [Public]
#	OPTIONAL vpc_id - [$AWS_VPC]
#
#>
######################################################################
p6_aws_svc_elb_create() {
    local elb_name="$1"
    local listeners="${2:-http}"
    local subnet_type="${3:-Public}"
    local vpc_id="${4:-$AWS_VPC}"

    local subnet_ids=$(p6_aws_svc_ec2_subnet_ids_get "$subnet_type" "$vpc_id" | xargs)

    local my_listeners
    # for my $listener in $listeners; do
    case listener in
    http)
        my_listeners="Protocol=http,LoadBalancerPort=80,InstanceProtocol=http,InstancePort=80"
        ;;
    http80to8080)
        my_listeners="Protocol=http,LoadBalancerPort=80,InstanceProtocol=http,InstancePort=8080"
        ;;
    http80to8000)
        my_listeners="Protocol=http,LoadBalancerPort=80,InstanceProtocol=http,InstancePort=8000"
        ;;
    https)
        local certificate_id=$(echo $listener | cut -f 2 -d ':')
        my_listeners="Protocol=https,LoadBalancerPort=443,InstanceProtocol=http,InstancePort=80,CertificateId=$certificate_id"
        ;;
    httpstohttps)
        my_listeners="Protocol=https,LoadBalancerPort=443,InstanceProtocol=https,InstancePort=443"
        ;;
    ssh)
        my_listeners="Protocol=tcp,LoadBalancerPort=22,InstanceProtocol=tcp,InstancePort=22"
        ;;
    *)
        my_listeners="$listener"
        ;;
    esac
    # done

    p6_aws_cli_cmd elb create-load-balancer "$elb_name" "'$listener'" --subnets $subnet_ids

    # XXX: tags

    # XXX :return
}
