.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$3;
.super Ljava/lang/Object;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    return-void
.end method
