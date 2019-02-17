# 概述
操作系统从第一代计算机开始就存在，并且随着时间的推移不断发展。在本章中，我们将讨论一些最常用的重要操作系统类型。

# 批量操作系统
批处理操作系统的用户不直接与计算机交互。每个用户在诸如穿孔卡之类的离线设备上准备他的工作并将其提交给计算机操作员。为了加快处理速度，具有类似需求的作业将一起批处理并作为一个组运行。程序员将其程序留给操作员，然后操作员将具有类似要求的程序分批分批。

批处理系统的问题如下 -

用户和工作之间缺乏互动。
CPU通常是空闲的，因为机械I / O设备的速度比CPU慢。
难以提供所需的优先级。

# 分时操作系统
分时是一种技术，它使位于不同终端的许多人能够同时使用特定的计算机系统。分时或多任务处理是多道程序设计的合理扩展。处理器同时在多个用户之间共享的时间称为分时。

多程序批处理系统和时间共享系统之间的主要区别在于，在多程序批处理系统的情况下，目标是最大化处理器使用，而在时间共享系统中，目标是最小化响应时间。

CPU通过在它们之间切换来执行多个作业，但是切换频繁发生。因此，用户可以立即收到响应。例如，在事务处理中，处理器以短脉冲串或计算量执行每个用户程序。也就是说，如果存在n个用户，则每个用户可以获得时间量。当用户提交命令时，响应时间最多只有几秒钟。

操作系统使用CPU调度和多道程序设计为每个用户提供一小部分时间。主要设计为批处理系统的计算机系统已被修改为分时系统。

分时共享操作系统的优点如下 -

提供快速响应的优势。
避免重复软件。
减少CPU空闲时间。
分时操作系统的缺点如下 -

可靠性问题。
用户程序和数据的安全性和完整性问题。
数据通信问题。

# 分布式操作系统
分布式系统使用多个中央处理器来为多个实时应用程序和多个用户提供服务。因此，数据处理作业在处理器之间分配。

处理器通过各种通信线路（例如高速总线或电话线）彼此通信。这些被称为松散耦合系统或分布式系统。分布式系统中的处理器的大小和功能可能不同。这些处理器称为站点，节点，计算机等。

分布式系统的优点如下 -

利用资源共享工具，一个站点的用户可以使用另一个站点的可用资源。
通过电子邮件加速彼此之间的数据交换。
如果一个站点在分布式系统中出现故障，则其余站点可能会继续运行。
更好地为客户服务。
减少主机上的负载。
减少数据处理的延迟。

# 网络操作系统
网络操作系统在服务器上运行，为服务器提供管理数据，用户，组，安全性，应用程序和其他网络功能的能力。网络操作系统的主要目的是允许网络中的多台计算机之间共享文件和打印机访问，通常是局域网（LAN），专用网络或其他网络。

网络操作系统的示例包括Microsoft Windows Server 2003，Microsoft Windows Server 2008，UNIX，Linux，Mac OS X，Novell NetWare和BSD。

网络操作系统的优点如下 -

集中式服务器非常稳定。
安全性由服务器管理。
可以轻松地将新技术和硬件升级到系统中。
可以从不同的位置和系统类型远程访问服务器。
网络操作系统的缺点如下 -

购买和运行服务器的成本很高。
对大多数操作的中心位置的依赖性。
需要定期维护和更新。

# 实时操作系统
实时系统被定义为一种数据处理系统，其中处理和响应输入所需的时间间隔非常小，以至于它控制环境。系统响应输入和显示所需更新信息所花费的时间称为响应时间。因此，在此方法中，与在线处理相比，响应时间非常短。

当对处理器的操作有严格的时间要求或者数据流时，使用实时系统，并且实时系统可以用作专用应用中的控制设备。实时操作系统必须具有明确定义的固定时间约束，否则系统将失败。例如，科学实验，医学成像系统，工业控制系统，武器系统，机器人，空中交通管制系统等。

有两种类型的实时操作系统。

## 硬实时系统
硬实时系统可确保关键任务按时完成。在硬实时系统中，二级存储受限或丢失，数据存储在ROM中。在这些系统中，几乎找不到虚拟内存。

## 软实时系统
软实时系统的限制性较小。关键的实时任务优先于其他任务，并在完成之前保留优先级。软实时系统的实用性比硬实时系统有限。例如，多媒体，虚拟现实，高级科学项目，如海底探测和行星探测器等。
