.class Lcom/parse/twitter/Twitter$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/parse/twitter/Twitter;

.field final synthetic val$callback:Lcom/parse/internal/AsyncCallback;

.field final synthetic val$consumer:Lcom/parse/signpost/OAuthConsumer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$provider:Lcom/parse/signpost/OAuthProvider;


# direct methods
.method constructor <init>(Lcom/parse/twitter/Twitter;Lcom/parse/internal/AsyncCallback;Landroid/content/Context;Lcom/parse/signpost/OAuthProvider;Lcom/parse/signpost/OAuthConsumer;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    iput-object p2, p0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iput-object p3, p0, Lcom/parse/twitter/Twitter$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/parse/twitter/Twitter$1;->val$provider:Lcom/parse/signpost/OAuthProvider;

    iput-object p5, p0, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    iput-object p6, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parse/twitter/Twitter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->val$provider:Lcom/parse/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    const-string v2, "twitter-oauth://complete"

    invoke-interface {v0, v1, v2}, Lcom/parse/signpost/OAuthProvider;->retrieveRequestToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    iput-object v0, p0, Lcom/parse/twitter/Twitter$1;->error:Ljava/lang/Throwable;

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parse/twitter/Twitter$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->error:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/parse/internal/AsyncCallback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 138
    new-instance v0, Lcom/parse/oauth/OAuth1FlowDialog;

    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$context:Landroid/content/Context;

    const-string v3, "twitter-oauth://complete"

    const-string v4, "api.twitter"

    new-instance v5, Lcom/parse/twitter/Twitter$1$1;

    invoke-direct {v5, p0}, Lcom/parse/twitter/Twitter$1$1;-><init>(Lcom/parse/twitter/Twitter$1;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parse/oauth/OAuth1FlowDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;)V

    .line 205
    invoke-virtual {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    throw v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 214
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 215
    return-void
.end method
