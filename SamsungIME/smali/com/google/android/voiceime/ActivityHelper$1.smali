.class Lcom/google/android/voiceime/ActivityHelper$1;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/ActivityHelper;->createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ActivityHelper;

.field final synthetic val$recognitionResults:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ActivityHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/voiceime/ActivityHelper$1;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    iput-object p2, p0, Lcom/google/android/voiceime/ActivityHelper$1;->val$recognitionResults:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper$1;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    iget-object v1, p0, Lcom/google/android/voiceime/ActivityHelper$1;->val$recognitionResults:[Ljava/lang/String;

    aget-object v1, v1, p2

    #calls: Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/voiceime/ActivityHelper;->access$000(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V

    return-void
.end method
