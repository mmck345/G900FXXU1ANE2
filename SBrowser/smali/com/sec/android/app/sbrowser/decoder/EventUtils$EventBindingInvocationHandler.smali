.class Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;
.super Ljava/lang/Object;
.source "EventUtils.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventBindingInvocationHandler"
.end annotation


# instance fields
.field private final eventTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final methodName:Ljava/lang/String;

.field private final target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->eventTypes:Ljava/util/Set;

    return-void
.end method

.method private hasMatchingParametersMethod(Ljava/lang/reflect/Method;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->eventTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->eventTypes:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->hasMatchingParametersMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/sec/android/app/sbrowser/decoder/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
