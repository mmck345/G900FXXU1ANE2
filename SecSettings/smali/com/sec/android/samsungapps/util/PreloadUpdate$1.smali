.class Lcom/sec/android/samsungapps/util/PreloadUpdate$1;
.super Lcom/sec/android/samsungapps/util/ServiceBinder;
.source "PreloadUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/samsungapps/util/PreloadUpdate;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;


# direct methods
.method constructor <init>(Lcom/sec/android/samsungapps/util/PreloadUpdate;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$1;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/samsungapps/util/ServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bindService(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$1;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-static {p1}, Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;

    move-result-object v1

    #setter for: Lcom/sec/android/samsungapps/util/PreloadUpdate;->_IPreloadUpdate:Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;
    invoke-static {v0, v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->access$0(Lcom/sec/android/samsungapps/util/PreloadUpdate;Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;)V

    return-void
.end method
