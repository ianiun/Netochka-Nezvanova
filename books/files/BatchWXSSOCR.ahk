; 定义计数器变量
count := 1

; 循环次数
Loop, 97
{
    ; 激活txt窗口
    WinActivate, *涅托奇卡-郭家申.TXT - 记事本 ahk_class Notepad
    ; 激活pdf窗口
    WinActivate, 费·陀思妥耶夫斯基全集  第2卷  中短篇小说集 (陈燊主编) (Z-Library).pdf - Adobe Acrobat Pro DC ahk_class AcrobatSDIWindow
    Sleep, 500

    ; 开始微信截图
    ; 按下alt
    Send, {LAlt Down}
    ; 按下a
    Send, {a}
    ; 松开alt
    Send, {LAlt Up}
    Sleep, 500

    ; 选取截图部分
    Click, 126, 226 Left, Down
    Sleep, 500
    Click, 1227, 994 Left, Up
    Sleep, 500

    ; 激活微信截图窗口
    WinActivate, MainWnd ahk_class SnapshotWnd
    Sleep, 500

    ; 按下“提取文字”
    Click, 943, 1024 Left, Down
    Click, 943, 1024 Left, Up
    Sleep, 2000

    ; 激活微信图片文字提取窗口
    WinActivate, 图片查看 ahk_class ImagePreviewWnd
    Sleep, 500

    ; 复制识别出的文字
    ; 按下ctrl
    Send, {LControl Down}
    ; 按下a
    Send, {a}
    ; 按下c
    Send, {c}
    ; 松开ctrl
    Send, {LControl Up}
    Sleep, 500

    ; 激活txt窗口
    WinActivate, *涅托奇卡-郭家申.TXT - 记事本 ahk_class Notepad
    Sleep, 500

    ; 粘贴识别出的文字
    ; 按下ctrl
    Send, {LControl Down}
    ; 按下a
    Send, {a}
    ; 按下->
    Send, {Right}
    ; 按下v
    Send, {v}
    ; 松开ctrl
    Send, {LControl Up}

    ; 回车区分段落
    Send, {Enter}
    Send, {Enter}
    Sleep, 500

     ; 增加计数器
    count := count + 1
    Send, %count%
    Send, {Enter}
    Sleep, 500

    ; 激活pdf窗口
    WinActivate, 费·陀思妥耶夫斯基全集  第2卷  中短篇小说集 (陈燊主编) (Z-Library).pdf - Adobe Acrobat Pro DC ahk_class AcrobatSDIWindow
    Sleep, 500

    ; 点击pdf翻页键
    Click, 320, 114 Left, Down
    Click, 320, 114 Left, Up
    Sleep, 500
}