# Network Booting

In a controlled network environment, UEFI network booting is possible.

`iPXE` and `wimboot` are required to load up into `WinPE`.

`wimboot` is already Secure Boot signed & capable, but `iPXE` is not.

[2Pint iPXE Anywhere](https://2pintsoftware.com/products/ipxeanywhere/) is a version of iPXE signed by Microsoft for Secure Boot.

It has an embedded script, but it can still be used with the correct DHCP options and files, see:

https://gist.github.com/iamacarpet/d37c17bcaf8767093a53265ed4d04b83

And example iPXE boot script can be found [here](Boot.ipxe).