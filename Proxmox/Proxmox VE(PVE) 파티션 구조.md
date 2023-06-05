
```
fdisk -l
```

![[Pasted image 20230422193045.png]]

Proxmox 파티션은 다음과 같이 구성되어 있습니다.
- 1K  BIOS
- 1G  EFI SYSTEM
- 나머지 : OS 영역, (LVM)

```
lvs
```

![[Pasted image 20230422194653.png]]

pve/data(VG/LV)는 LVM Thin Pool 입니다.
pve/root(VG/LV)는 / (루트) 볼륨 입니다.
pve/swap(VG/LV)은 swap 볼륨 입니다.

참고
https://proxmox.co.kr/pve/proxmox-vepve%EB%A5%BC-iso%EB%A1%9C-%EC%84%A4%EC%B9%98-%ED%95%98%EC%98%80%EC%9D%84%EB%95%8C-%ED%8C%8C%ED%8B%B0%EC%85%98-%EA%B5%AC%EC%A1%B0-%EC%84%A4%EB%AA%85/
