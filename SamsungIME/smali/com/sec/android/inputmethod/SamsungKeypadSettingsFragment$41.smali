.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$900(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$1000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
