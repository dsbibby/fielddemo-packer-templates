# Move the SSH key to Authorized Keys and ensure permissions
mkdir -p /home/admin/.ssh
chmod 700 /home/admin/.ssh
cat /tmp/id_rsa.pub > /home/admin/.ssh/authorized_keys
chmod 644 /home/admin/.ssh/authorized_keys
chown -R admin /home/admin/.ssh
rm -rf /tmp/id_rsa.pub