.class Lcom/android/settings/wifi/WifiConnectionMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "WifiConnectionMonitorService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive, Action : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v15, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "wifi_state"

    const/16 v16, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "WifiConnectionMonitorService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive WifiState = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startSearch()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v15, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startMonitor()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    goto :goto_0

    :cond_5
    const-string v15, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    monitor-exit v16

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_6
    :try_start_1
    const-string v15, "wifiConfiguration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_a

    const-string v15, "changeReason"

    const/16 v17, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, SSID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", status:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",  reason:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    const/4 v15, 0x1

    if-ne v11, v15, :cond_9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    :goto_1
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_5
    const-string v15, "WifiConnectionMonitorService"

    const-string v17, "removeDoubleQuotes - NullPointerException"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_d
    const-string v15, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v15

    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    if-eqz v13, :cond_f

    if-nez v4, :cond_10

    :cond_f
    monitor-exit v16

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    iget-object v15, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    iget v15, v12, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I

    move-result v17

    add-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    if-lt v15, v0, :cond_11

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, SSID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", RSSI:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", threashold:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_13

    iget v15, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_13

    iget-object v15, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    if-eqz v8, :cond_14

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v15

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto/16 :goto_3

    :cond_15
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :cond_16
    const-string v15, "android.net.wifi.REMOVE_BLACKLIST"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_17

    monitor-exit v16

    goto/16 :goto_0

    :catchall_2
    move-exception v15

    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v15

    :cond_17
    :try_start_9
    const-string v15, "netId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_18

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, REMOVE_BLACKLIST netid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    monitor-exit v16

    goto/16 :goto_0

    :cond_19
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v15, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v15, v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    monitor-exit v16

    goto/16 :goto_0

    :cond_1b
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0
.end method
