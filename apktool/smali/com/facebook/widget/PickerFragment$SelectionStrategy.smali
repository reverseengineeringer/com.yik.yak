.class abstract Lcom/facebook/widget/PickerFragment$SelectionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract clear()V
.end method

.method abstract getSelectedIds()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract isEmpty()Z
.end method

.method abstract isSelected(Ljava/lang/String;)Z
.end method

.method abstract readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method abstract saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method abstract shouldShowCheckBoxIfUnselected()Z
.end method

.method abstract toggleSelection(Ljava/lang/String;)V
.end method
