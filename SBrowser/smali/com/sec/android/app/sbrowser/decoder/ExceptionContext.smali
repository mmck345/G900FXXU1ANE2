.class public interface abstract Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;
.super Ljava/lang/Object;
.source "ExceptionContext.java"


# virtual methods
.method public abstract addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;
.end method

.method public abstract getContextEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/decoder/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getContextLabels()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContextValues(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;
.end method
