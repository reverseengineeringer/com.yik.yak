.class Lcom/parse/oauth/OAuth1FlowDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/parse/oauth/OAuth1FlowDialog;


# direct methods
.method constructor <init>(Lcom/parse/oauth/OAuth1FlowDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parse/oauth/OAuth1FlowDialog$2;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$2;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->cancel()V

    .line 83
    return-void
.end method
