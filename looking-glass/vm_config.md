https://forums.unraid.net/topic/132350-5700xt-code-43-on-windows-vm/

- features
```xml
 <features>
    <acpi/>
    <apic/>
    <hyperv mode='custom'>
      <relaxed state='on'/>
      <vapic state='on'/>
      <spinlocks state='on' retries='8191'/>
      <vendor_id state='on' value='1234567890ab'/> <!--  with Vendor ID set to 'none' you get error 43 -->
    </hyperv>

    <kvm>
      <hidden state='on'/> <!-- set this for kvm, if you do not do it, you get error 43 -->
    </kvm>

  </features>
```

- devices
```xml
<shmem name='looking-glass'>
    <model type='ivshmem-plain'/>
    <size unit='M'>128</size>
</shmem>
```

- hostdev
```xml
<hostdev mode="subsystem" type="pci" managed="yes">
    <source>
        <address domain="0x0000" bus="0x0f" slot="0x00" function="0x0"/>
    </source>
    <address type="pci" domain="0x0000" bus="0x04" slot="0x00" function="0x0" multifunction="on"/> <!-- add multifunction -->
</hostdev>
<hostdev mode="subsystem" type="pci" managed="yes">
    <source>
        <address domain="0x0000" bus="0x0f" slot="0x00" function="0x1"/>
    </source>
    <address type="pci" domain="0x0000" bus="0x07" slot="0x00" function="0x1"/> <!-- change function to 0x1 -->
</hostdev>
```
