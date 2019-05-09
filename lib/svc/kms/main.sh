p6_aws_kms_svc_list_aliases() {

    p6_aws_kms_aliases_list list-aliases \
			    --output text \
			    --query "Aliases[]" | sort
}
