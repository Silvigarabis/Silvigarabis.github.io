# 如何让 Windows 10 更新通知可以在设置中管理

<img width="548" height="198" alt="图片" src="https://github.com/user-attachments/assets/860879d0-5bae-40cf-880f-d46f3dd5780c" />

在 **Windows 10 Pro 22H2** 中，Windows 更新经常会弹出通知，通过 **Windows 通知中心**显示，然而这东西默认情况下无法在“通知和操作”设置中修改。这就很烦人了

经过研究，可以通过修改注册表来解决这个问题：

1. 打开注册表编辑器（regedit），**务必以 `TrustedInstaller` 权限启动**，否则无法修改相关注册表项。

2. 定位到此路径：`HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AppUserModelId\Windows.SystemToast.WindowsUpdate.Notification`

3. 修改`ShowInSettings` 的 DWORD 值为 `1`

完成上述步骤后，“Windows 更新”就可以正常在“通知和操作”设置中显示，从而可以正常修改它的开关或声音等选项。
