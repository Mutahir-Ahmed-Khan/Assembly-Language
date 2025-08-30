# Assembly-Language
How to Set-Up VS-Code 2022 (Community) as Compiler for Assembly Language 

📂 Step 1: Install and Place Irvine Library

Download the Irvine Library from GitHub

Extract it into your C drive.

Rename the folder to Irvine (with a capital I).

📝 Step 2: Create an Assembly Project

Open Visual Studio 2022.

Create an Empty Project.

In Solution Explorer → Right-click → Add New Item → Create a new file → name it with .asm extension.

⚙ Step 3: Enable MASM Support

In Solution Explorer → Right-click project → Build Dependencies → Build Customizations.

Tick ✅ .MASM.

🔧 Step 4: Configure Project Properties

Right-click project → Properties, then do the following:

Configuration Properties → VC++ Directories → Include Directories
➝ C:\Irvine\Include

Configuration Properties → VC++ Directories → Library Directories
➝ C:\Irvine\Lib

Linker → General → Additional Library Directories
➝ C:\Irvine

Linker → Input → Additional Dependencies
➝ Irvine32.lib;

📄 Step 5: Configure ASM File Properties

Right-click your .asm file → Properties.

Ensure Microsoft Macro Assembler is selected.

Under General → Include Paths → set:
➝ C:\Irvine

⚠ Step 6: Use x86 Platform

On the top toolbar of Visual Studio, change the build target from x64 → x86.
(Irvine only works with 32-bit mode).

🚨 Step 7: Fix Windows Security Issues

Sometimes Windows Defender blocks .asm execution.

Copy the path of your project (e.g. C:\Users\Admin\source\repos\[YourProject]).

Go to Windows Security → Virus & Threat Protection → Manage Settings → Exclusions.

Add your project folder as an Exclusion.

🎉 Done!

Now you can write, build, and run Assembly language programs in Visual Studio 2022 using the Irvine library.
