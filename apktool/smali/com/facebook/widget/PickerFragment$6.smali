.class Lcom/facebook/widget/PickerFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$6;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$6;->this$0:Lcom/facebook/widget/PickerFragment;

    # invokes: Lcom/facebook/widget/PickerFragment;->reprioritizeDownloads()V
    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$400(Lcom/facebook/widget/PickerFragment;)V

    .line 812
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 807
    return-void
.end method
