(input)data"aws_ip_ranges""european_ec2"{

regions =["eu-west-1","eu-central-1"]/all the ip addresses
services = ["ec2"] //only ec2 services

}

resource"aws_security_group"from_europe"{
name = "from_europe"

ingress {
//incoming traffic

from_port ="443"
to_port = "443"//tto connect ip address 
protocol ="tcp"
cidr_block=["${data.aws_ip_ranges.europe.ec2.cide_blocks}"]//anly allowing ip from the data

}

tags {
CreateData = "${data.aws_ip_ranges.europe.ec2.create_data}"
SyncToken = "${data.aws_ip_ranges.europe.ec2.Sync_Token}"
}

}


