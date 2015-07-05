.class Lcom/parse/twitter/Twitter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;


# instance fields
.field final synthetic this$1:Lcom/parse/twitter/Twitter$1;


# direct methods
.method constructor <init>(Lcom/parse/twitter/Twitter$1;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v0, v0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    invoke-interface {v0}, Lcom/parse/internal/AsyncCallback;->onCancel()V

    .line 203
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v0, v0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    invoke-interface {v0}, Lcom/parse/internal/AsyncCallback;->onCancel()V

    .line 198
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v1, Lcom/parse/twitter/Twitter$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/parse/twitter/Twitter$1$1$1;-><init>(Lcom/parse/twitter/Twitter$1$1;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v0, v0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    new-instance v1, Lcom/parse/oauth/OAuth1FlowException;

    invoke-direct {v1, p1, p2, p3}, Lcom/parse/oauth/OAuth1FlowException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/parse/internal/AsyncCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method
