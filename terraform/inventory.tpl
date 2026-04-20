[monitoring]
${public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=${private_key}

[monitoring:vars]
ansible_ssh_common_args='-o StrictHostKeyChecking=no'
