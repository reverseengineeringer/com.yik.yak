.class Lcom/facebook/widget/PlacePickerFragment$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PlacePickerFragment;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$2;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$2;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    # invokes: Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V
    invoke-static {v0}, Lcom/facebook/widget/PlacePickerFragment;->access$200(Lcom/facebook/widget/PlacePickerFragment;)V

    .line 435
    return-void
.end method
