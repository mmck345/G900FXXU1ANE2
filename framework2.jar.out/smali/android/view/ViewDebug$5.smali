.class final Landroid/view/ViewDebug$5;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:[J

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$operation:Landroid/view/ViewDebug$ViewOperation;


# direct methods
.method constructor <init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    iput-object p2, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    iput-object p3, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v3}, Landroid/view/ViewDebug$ViewOperation;->pre()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v3, v0}, Landroid/view/ViewDebug$ViewOperation;->run([Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    sub-long/2addr v5, v1

    aput-wide v5, v3, v4

    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v3, v0}, Landroid/view/ViewDebug$ViewOperation;->post([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v3
.end method