.class Lcom/parse/FacebookAuthenticationProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/android/Facebook$ServiceListener;


# instance fields
.field final synthetic this$0:Lcom/parse/FacebookAuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/parse/FacebookAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parse/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    # getter for: Lcom/parse/FacebookAuthenticationProvider;->userId:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/FacebookAuthenticationProvider;->access$000(Lcom/parse/FacebookAuthenticationProvider;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleSuccess(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/parse/FacebookAuthenticationProvider;->access$100(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Error;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/parse/FacebookAuthenticationProvider;->access$200(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/parse/FacebookAuthenticationProvider;->access$200(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method
