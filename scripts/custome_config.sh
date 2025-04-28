#!/bin/bash

# Nanopi
sed -i -e '/CONFIG_MAKE_TOOLCHAIN=y/d' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IB=y/# CONFIG_IB is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi
sed -i -e '$ a CONFIG_PACKAGE_kmod-mt7921u=y' configs/rockchip/01-nanopi
sed -i -e '$ a CONFIG_PACKAGE_kmod-mt76x0u=y' configs/rockchip/01-nanopi
sed -i -e '$ a CONFIG_PACKAGE_kmod-mt7601u=y' configs/rockchip/01-nanopi
sed -i -e '$ a CONFIG_PACKAGE_kmod-mt76x2u=y' configs/rockchip/01-nanopi
sed -i -e '$ a CONFIG_PACKAGE_kmod-rtl8xxxu=y' configs/rockchip/01-nanopi

# sed -i -e '$ a CONFIG_PREEMPT_BUILD=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_PREEMPT_COUNT=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_PREEMPT=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_PREEMPTION=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CPU_ISOLATION=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_TREE_RCU=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_PREEMPT_RCU=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_RCU_EXPERT=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_UCLAMP_TASK_GROUP=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CPUSETS=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_PROC_PID_CPUSET=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_RD_XZ=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_RD_LZ4=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_RD_ZSTD=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_BOOT_CONFIG=y' configs/rockchip/01-nanopi
# # Processor types and features
# sed -i -e '$ a CONFIG_SMP=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_KVM_GUEST=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_PARAVIRT=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_HYPERVISOR_GUEST=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_NUMA=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_X86_64_ACPI_NUMA=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_NUMA_EMU=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CMDLINE_BOOL=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CMDLINE="rootwait cgroup_no_v1=all cgroup2=on"' configs/rockchip/01-nanopi
# # Binary emulations
# sed -i -e '$ a CONFIG_IA32_EMULATION=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_X86_X32_ABI=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_COMPAT_32=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_COMPAT=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_COMPAT_FOR_U64_ALIGNMENT=y' configs/rockchip/01-nanopi
# # IO SCHEDULERS
# sed -i -e '$ a CONFIG_MQ_IOSCHED_DEADLINE=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_MQ_IOSCHED_KYBER=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_IOSCHED_BFQ=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_BFQ_GROUP_IOSCHED=y' configs/rockchip/01-nanopi
# # Cgroup
# sed -i -e '$ a CONFIG_SCHED_CORE=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUPS=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_FAVOR_DYNMODS=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_MEMCG=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_MEMCG_KMEM=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_BLK_CGROUP=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_WRITEBACK=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_SCHED=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_FAIR_GROUP_SCHED=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CFS_BANDWIDTH=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_RT_GROUP_SCHED=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_PIDS=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_RDMA=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_FREEZER=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_HUGETLB=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_BLK_CGROUP_IOLATENCY=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_BLK_CGROUP_IOCOST=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_BLK_CGROUP_IOPRIO=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_NET_PRIO=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_NET_CLASSID=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_DEVICE=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_CPUACCT=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_PERF=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_CGROUP_BPF=y' configs/rockchip/01-nanopi
# sed -i -e '$ a CONFIG_SCHED_AUTOGROUP=y' configs/rockchip/01-nanopi

## lang
sed -i -e 's/CONFIG_LUCI_LANG_bg=y/# CONFIG_LUCI_LANG_bg is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ca=y/# CONFIG_LUCI_LANG_ca is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_cs=y/# CONFIG_LUCI_LANG_cs is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_de=y/# CONFIG_LUCI_LANG_de is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_el=y/# CONFIG_LUCI_LANG_el is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_es=y/# CONFIG_LUCI_LANG_es is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_fr=y/# CONFIG_LUCI_LANG_fr is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_he=y/# CONFIG_LUCI_LANG_he is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_hi=y/# CONFIG_LUCI_LANG_hi is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_hu=y/# CONFIG_LUCI_LANG_hu is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_it=y/# CONFIG_LUCI_LANG_it is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ja=y/# CONFIG_LUCI_LANG_ja is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ko=y/# CONFIG_LUCI_LANG_ko is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_mr=y/# CONFIG_LUCI_LANG_mr is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ms=y/# CONFIG_LUCI_LANG_ms is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_pl=y/# CONFIG_LUCI_LANG_pl is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_pt=y/# CONFIG_LUCI_LANG_pt is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ro=y/# CONFIG_LUCI_LANG_ro is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ru=y/# CONFIG_LUCI_LANG_ru is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_sk=y/# CONFIG_LUCI_LANG_sk is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_tr=y/# CONFIG_LUCI_LANG_tr is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_uk=y/# CONFIG_LUCI_LANG_uk is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_vi=y/# CONFIG_LUCI_LANG_vi is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_zh_Hans=y/# CONFIG_LUCI_LANG_zh_Hans is not set/g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_zh_Hant=y/# CONFIG_LUCI_LANG_zh_Hant is not set/g' configs/rockchip/02-luci_lang

# Custom

# CONFIG_ANDROID_ARM64_WORKAROUND_DMA_BEYOND_POC=y

# Utils

# Wifi
